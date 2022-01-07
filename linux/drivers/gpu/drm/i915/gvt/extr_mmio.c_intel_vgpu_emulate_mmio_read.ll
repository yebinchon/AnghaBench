; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio.c_intel_vgpu_emulate_mmio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio.c_intel_vgpu_emulate_mmio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, i64, %struct.intel_gvt* }
%struct.intel_gvt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"fail to emulate MMIO read %08x len %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_emulate_mmio_read(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_gvt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %13, i32 0, i32 2
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %14, align 8
  store %struct.intel_gvt* %15, %struct.intel_gvt** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @failsafe_emulate_mmio_rw(%struct.intel_vgpu* %23, i32 %24, i8* %25, i32 %26, i32 1)
  store i32 0, i32* %5, align 4
  br label %162

28:                                               ; preds = %4
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @intel_vgpu_gpa_to_mmio_offset(%struct.intel_vgpu* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ugt i32 %35, 8
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %153

41:                                               ; preds = %28
  %42 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @reg_is_gtt(%struct.intel_gvt* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %96

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @IS_ALIGNED(i32 %47, i32 4)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @IS_ALIGNED(i32 %51, i32 8)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i1 [ false, %46 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %153

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 4
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @WARN_ON(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %153

73:                                               ; preds = %67
  %74 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %75, %76
  %78 = sub i32 %77, 1
  %79 = call i64 @reg_is_gtt(%struct.intel_gvt* %74, i32 %78)
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @WARN_ON(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %153

86:                                               ; preds = %73
  %87 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @intel_vgpu_emulate_ggtt_mmio_read(%struct.intel_vgpu* %87, i32 %88, i8* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %153

95:                                               ; preds = %86
  br label %157

96:                                               ; preds = %41
  %97 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @reg_is_mmio(%struct.intel_gvt* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i64 @WARN_ON_ONCE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu* %106, i32 %107, i8* %108, i32 %109)
  store i32 %110, i32* %12, align 4
  br label %157

111:                                              ; preds = %96
  %112 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %113, %114
  %116 = sub i32 %115, 1
  %117 = call i32 @reg_is_mmio(%struct.intel_gvt* %112, i32 %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @WARN_ON(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %153

124:                                              ; preds = %111
  %125 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @intel_gvt_mmio_is_unalign(%struct.intel_gvt* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @IS_ALIGNED(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  %136 = call i64 @WARN_ON(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %153

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %124
  %141 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i8*, i8** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @intel_vgpu_mmio_reg_rw(%struct.intel_vgpu* %141, i32 %142, i8* %143, i32 %144, i32 1)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %153

149:                                              ; preds = %140
  %150 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @intel_gvt_mmio_set_accessed(%struct.intel_gvt* %150, i32 %151)
  store i32 0, i32* %12, align 4
  br label %157

153:                                              ; preds = %148, %138, %123, %94, %85, %72, %60, %40
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %149, %105, %95
  %158 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %159 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %157, %22
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @failsafe_emulate_mmio_rw(%struct.intel_vgpu*, i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_vgpu_gpa_to_mmio_offset(%struct.intel_vgpu*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @reg_is_gtt(%struct.intel_gvt*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @intel_vgpu_emulate_ggtt_mmio_read(%struct.intel_vgpu*, i32, i8*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @reg_is_mmio(%struct.intel_gvt*, i32) #1

declare dso_local i32 @intel_gvt_hypervisor_read_gpa(%struct.intel_vgpu*, i32, i8*, i32) #1

declare dso_local i32 @intel_gvt_mmio_is_unalign(%struct.intel_gvt*, i32) #1

declare dso_local i32 @intel_vgpu_mmio_reg_rw(%struct.intel_vgpu*, i32, i8*, i32, i32) #1

declare dso_local i32 @intel_gvt_mmio_set_accessed(%struct.intel_gvt*, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
