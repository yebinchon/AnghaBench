; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_ib_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_ib_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i64, i32, i32*, i32 }
%struct.radeon_cs_packet = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"Packet0 not allowed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Non-PM4 ring %d !\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown packet type %d !\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\090x%08x <---\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\090x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_ib_parse(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.radeon_cs_packet, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %139, %2
  %10 = load i64, i64* %6, align 8
  %11 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @RADEON_CP_PACKET_GET_TYPE(i32 %17)
  %19 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RADEON_CP_PACKET_GET_COUNT(i32 %25)
  %27 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %94 [
    i32 131, label %31
    i32 130, label %38
    i32 129, label %41
  ]

31:                                               ; preds = %9
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %103

38:                                               ; preds = %9
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %6, align 8
  br label %103

41:                                               ; preds = %9
  %42 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %43 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @RADEON_CP_PACKET3_GET_OPCODE(i32 %47)
  %49 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 3
  store i32 %48, i32* %49, align 8
  %50 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %51 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %57 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @si_vm_packet3_ce_check(%struct.radeon_device* %55, i32* %58, %struct.radeon_cs_packet* %8)
  store i32 %59, i32* %5, align 4
  br label %87

60:                                               ; preds = %41
  %61 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %62 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %76 [
    i32 128, label %64
    i32 133, label %70
    i32 132, label %70
  ]

64:                                               ; preds = %60
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %67 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @si_vm_packet3_gfx_check(%struct.radeon_device* %65, i32* %68, %struct.radeon_cs_packet* %8)
  store i32 %69, i32* %5, align 4
  br label %86

70:                                               ; preds = %60, %60
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %73 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @si_vm_packet3_compute_check(%struct.radeon_device* %71, i32* %74, %struct.radeon_cs_packet* %8)
  store i32 %75, i32* %5, align 4
  br label %86

76:                                               ; preds = %60
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %81 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %76, %70, %64
  br label %87

87:                                               ; preds = %86, %54
  %88 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %103

94:                                               ; preds = %9
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %94, %87, %38, %31
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %138

106:                                              ; preds = %103
  store i64 0, i64* %7, align 8
  br label %107

107:                                              ; preds = %134, %106
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %110 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %107
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %119 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  br label %133

125:                                              ; preds = %113
  %126 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %127 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %125, %117
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %7, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %7, align 8
  br label %107

137:                                              ; preds = %107
  br label %145

138:                                              ; preds = %103
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %142 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ult i64 %140, %143
  br i1 %144, label %9, label %145

145:                                              ; preds = %139, %137
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @RADEON_CP_PACKET_GET_TYPE(i32) #1

declare dso_local i32 @RADEON_CP_PACKET_GET_COUNT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @RADEON_CP_PACKET3_GET_OPCODE(i32) #1

declare dso_local i32 @si_vm_packet3_ce_check(%struct.radeon_device*, i32*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @si_vm_packet3_gfx_check(%struct.radeon_device*, i32*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @si_vm_packet3_compute_check(%struct.radeon_device*, i32*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
