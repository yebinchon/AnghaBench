; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_compute_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_compute_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_cs_packet = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid Compute packet3: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64*, %struct.radeon_cs_packet*)* @si_vm_packet3_compute_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_vm_packet3_compute_check(%struct.radeon_device* %0, i64* %1, %struct.radeon_cs_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.radeon_cs_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.radeon_cs_packet* %2, %struct.radeon_cs_packet** %7, align 8
  %14 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %15 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %9, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %141 [
    i32 144, label %25
    i32 140, label %25
    i32 159, label %25
    i32 152, label %25
    i32 151, label %25
    i32 162, label %25
    i32 128, label %25
    i32 160, label %25
    i32 161, label %25
    i32 143, label %25
    i32 137, label %25
    i32 158, label %25
    i32 141, label %25
    i32 156, label %25
    i32 134, label %25
    i32 130, label %25
    i32 146, label %25
    i32 142, label %25
    i32 133, label %25
    i32 150, label %25
    i32 149, label %25
    i32 148, label %25
    i32 139, label %25
    i32 138, label %25
    i32 136, label %25
    i32 135, label %25
    i32 147, label %25
    i32 131, label %25
    i32 132, label %25
    i32 145, label %25
    i32 155, label %26
    i32 129, label %45
    i32 157, label %94
    i32 154, label %113
    i32 153, label %132
  ]

25:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %148

26:                                               ; preds = %3
  %27 = load i64, i64* %10, align 8
  %28 = and i64 %27, 3840
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, 3
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = mul i64 %35, 4
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @si_vm_reg_valid(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %149

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %26
  br label %148

45:                                               ; preds = %3
  %46 = load i64, i64* %10, align 8
  %47 = and i64 %46, 3840
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %45
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = mul i64 %54, 4
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = and i64 %56, 65536
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @si_vm_reg_valid(i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %149

66:                                               ; preds = %59
  br label %92

67:                                               ; preds = %49
  store i64 0, i64* %13, align 8
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %71 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %69, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %13, align 8
  %79 = mul i64 4, %78
  %80 = add i64 %77, %79
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @si_vm_reg_valid(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %149

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %13, align 8
  br label %68

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %45
  br label %148

94:                                               ; preds = %3
  %95 = load i64, i64* %10, align 8
  %96 = and i64 %95, 256
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load i64*, i64** %6, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 5
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = mul i64 %103, 4
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @si_vm_reg_valid(i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %149

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %94
  br label %148

113:                                              ; preds = %3
  %114 = load i64, i64* %10, align 8
  %115 = and i64 %114, 2
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i64*, i64** %6, align 8
  %119 = load i64, i64* %9, align 8
  %120 = add i64 %119, 3
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = mul i64 %122, 4
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @si_vm_reg_valid(i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %117
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %149

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %113
  br label %148

132:                                              ; preds = %3
  %133 = load i64*, i64** %6, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i32 @si_vm_packet3_cp_dma_check(i64* %133, i64 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  br label %149

140:                                              ; preds = %132
  br label %148

141:                                              ; preds = %3
  %142 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %143 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %149

148:                                              ; preds = %140, %131, %112, %93, %44, %25
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %141, %138, %127, %108, %84, %63, %40
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @si_vm_reg_valid(i64) #1

declare dso_local i32 @si_vm_packet3_cp_dma_check(i64*, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
