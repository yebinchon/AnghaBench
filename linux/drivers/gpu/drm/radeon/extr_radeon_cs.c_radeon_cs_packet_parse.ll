; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_packet_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_packet_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { %struct.radeon_device*, %struct.radeon_cs_chunk* }
%struct.radeon_device = type { i32 }
%struct.radeon_cs_chunk = type { i32 }
%struct.radeon_cs_packet = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"Can not parse packet at %d after CS end %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown packet type %d at %d !\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Packet (%d:%d:%d) end after CS buffer (%d) !\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\090x%08x <---\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\090x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_cs_parser*, align 8
  %6 = alloca %struct.radeon_cs_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_cs_chunk*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %5, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %13, i32 0, i32 1
  %15 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %14, align 8
  store %struct.radeon_cs_chunk* %15, %struct.radeon_cs_chunk** %8, align 8
  %16 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %21 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %27 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %146

32:                                               ; preds = %3
  %33 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %38 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @RADEON_CP_PACKET_GET_TYPE(i32 %39)
  %41 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @RADEON_CP_PACKET_GET_COUNT(i32 %43)
  %45 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %46 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %48 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %50 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %81 [
    i32 130, label %52
    i32 128, label %73
    i32 129, label %78
  ]

52:                                               ; preds = %32
  %53 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CHIP_R600, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @R100_CP_PACKET0_GET_REG(i32 %59)
  %61 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @RADEON_CP_PACKET0_GET_ONE_REG_WR(i32 %63)
  %65 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %66 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %65, i32 0, i32 5
  store i64 %64, i64* %66, align 8
  br label %72

67:                                               ; preds = %52
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @R600_CP_PACKET0_GET_REG(i32 %68)
  %70 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %71 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %58
  br label %89

73:                                               ; preds = %32
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @RADEON_CP_PACKET3_GET_OPCODE(i32 %74)
  %76 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  br label %89

78:                                               ; preds = %32
  %79 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %80 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %79, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  br label %89

81:                                               ; preds = %32
  %82 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %83 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %119

89:                                               ; preds = %78, %73, %72
  %90 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %91 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %95 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %93, %96
  %98 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %99 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp uge i32 %97, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %89
  %103 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %104 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %107 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %6, align 8
  %110 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %113 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %108, i32 %111, i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %11, align 4
  br label %119

118:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %146

119:                                              ; preds = %102, %81
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %141, %119
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.radeon_cs_chunk*, %struct.radeon_cs_chunk** %8, align 8
  %123 = getelementptr inbounds %struct.radeon_cs_chunk, %struct.radeon_cs_chunk* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %131, i32 %132)
  %134 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %140

135:                                              ; preds = %126
  %136 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %5, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %136, i32 %137)
  %139 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %135, %130
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %120

144:                                              ; preds = %120
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %118, %24
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, ...) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @RADEON_CP_PACKET_GET_TYPE(i32) #1

declare dso_local i32 @RADEON_CP_PACKET_GET_COUNT(i32) #1

declare dso_local i32 @R100_CP_PACKET0_GET_REG(i32) #1

declare dso_local i64 @RADEON_CP_PACKET0_GET_ONE_REG_WR(i32) #1

declare dso_local i32 @R600_CP_PACKET0_GET_REG(i32) #1

declare dso_local i32 @RADEON_CP_PACKET3_GET_OPCODE(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
