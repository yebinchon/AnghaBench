; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_program_fdi_mphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_program_fdi_mphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SBI_MPHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @lpt_program_fdi_mphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpt_program_fdi_mphy(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = load i32, i32* @SBI_MPHY, align 4
  %6 = call i32 @intel_sbi_read(%struct.drm_i915_private* %4, i32 32776, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 16777215
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 301989888
  store i32 %10, i32* %3, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SBI_MPHY, align 4
  %14 = call i32 @intel_sbi_write(%struct.drm_i915_private* %11, i32 32776, i32 %12, i32 %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = load i32, i32* @SBI_MPHY, align 4
  %17 = call i32 @intel_sbi_read(%struct.drm_i915_private* %15, i32 8200, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, 2048
  store i32 %19, i32* %3, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SBI_MPHY, align 4
  %23 = call i32 @intel_sbi_write(%struct.drm_i915_private* %20, i32 8200, i32 %21, i32 %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = load i32, i32* @SBI_MPHY, align 4
  %26 = call i32 @intel_sbi_read(%struct.drm_i915_private* %24, i32 8456, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, 2048
  store i32 %28, i32* %3, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SBI_MPHY, align 4
  %32 = call i32 @intel_sbi_write(%struct.drm_i915_private* %29, i32 8456, i32 %30, i32 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = load i32, i32* @SBI_MPHY, align 4
  %35 = call i32 @intel_sbi_read(%struct.drm_i915_private* %33, i32 8300, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, 19136512
  store i32 %37, i32* %3, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SBI_MPHY, align 4
  %41 = call i32 @intel_sbi_write(%struct.drm_i915_private* %38, i32 8300, i32 %39, i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = load i32, i32* @SBI_MPHY, align 4
  %44 = call i32 @intel_sbi_read(%struct.drm_i915_private* %42, i32 8556, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, 19136512
  store i32 %46, i32* %3, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SBI_MPHY, align 4
  %50 = call i32 @intel_sbi_write(%struct.drm_i915_private* %47, i32 8556, i32 %48, i32 %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = load i32, i32* @SBI_MPHY, align 4
  %53 = call i32 @intel_sbi_read(%struct.drm_i915_private* %51, i32 8320, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, -57345
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, 40960
  store i32 %57, i32* %3, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SBI_MPHY, align 4
  %61 = call i32 @intel_sbi_write(%struct.drm_i915_private* %58, i32 8320, i32 %59, i32 %60)
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %63 = load i32, i32* @SBI_MPHY, align 4
  %64 = call i32 @intel_sbi_read(%struct.drm_i915_private* %62, i32 8576, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, -57345
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, 40960
  store i32 %68, i32* %3, align 4
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SBI_MPHY, align 4
  %72 = call i32 @intel_sbi_write(%struct.drm_i915_private* %69, i32 8576, i32 %70, i32 %71)
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %74 = load i32, i32* @SBI_MPHY, align 4
  %75 = call i32 @intel_sbi_read(%struct.drm_i915_private* %73, i32 8332, i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, -256
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, 28
  store i32 %79, i32* %3, align 4
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SBI_MPHY, align 4
  %83 = call i32 @intel_sbi_write(%struct.drm_i915_private* %80, i32 8332, i32 %81, i32 %82)
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %85 = load i32, i32* @SBI_MPHY, align 4
  %86 = call i32 @intel_sbi_read(%struct.drm_i915_private* %84, i32 8588, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, -256
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, 28
  store i32 %90, i32* %3, align 4
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @SBI_MPHY, align 4
  %94 = call i32 @intel_sbi_write(%struct.drm_i915_private* %91, i32 8588, i32 %92, i32 %93)
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %96 = load i32, i32* @SBI_MPHY, align 4
  %97 = call i32 @intel_sbi_read(%struct.drm_i915_private* %95, i32 8344, i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = and i32 %98, -16711681
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = or i32 %100, 1835008
  store i32 %101, i32* %3, align 4
  %102 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @SBI_MPHY, align 4
  %105 = call i32 @intel_sbi_write(%struct.drm_i915_private* %102, i32 8344, i32 %103, i32 %104)
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %107 = load i32, i32* @SBI_MPHY, align 4
  %108 = call i32 @intel_sbi_read(%struct.drm_i915_private* %106, i32 8600, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, -16711681
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, 1835008
  store i32 %112, i32* %3, align 4
  %113 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @SBI_MPHY, align 4
  %116 = call i32 @intel_sbi_write(%struct.drm_i915_private* %113, i32 8600, i32 %114, i32 %115)
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %118 = load i32, i32* @SBI_MPHY, align 4
  %119 = call i32 @intel_sbi_read(%struct.drm_i915_private* %117, i32 8388, i32 %118)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, 134217728
  store i32 %121, i32* %3, align 4
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @SBI_MPHY, align 4
  %125 = call i32 @intel_sbi_write(%struct.drm_i915_private* %122, i32 8388, i32 %123, i32 %124)
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %127 = load i32, i32* @SBI_MPHY, align 4
  %128 = call i32 @intel_sbi_read(%struct.drm_i915_private* %126, i32 8644, i32 %127)
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %129, 134217728
  store i32 %130, i32* %3, align 4
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @SBI_MPHY, align 4
  %134 = call i32 @intel_sbi_write(%struct.drm_i915_private* %131, i32 8644, i32 %132, i32 %133)
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %136 = load i32, i32* @SBI_MPHY, align 4
  %137 = call i32 @intel_sbi_read(%struct.drm_i915_private* %135, i32 8428, i32 %136)
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* %3, align 4
  %139 = and i32 %138, 268435455
  store i32 %139, i32* %3, align 4
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, 1073741824
  store i32 %141, i32* %3, align 4
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @SBI_MPHY, align 4
  %145 = call i32 @intel_sbi_write(%struct.drm_i915_private* %142, i32 8428, i32 %143, i32 %144)
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %147 = load i32, i32* @SBI_MPHY, align 4
  %148 = call i32 @intel_sbi_read(%struct.drm_i915_private* %146, i32 8684, i32 %147)
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = and i32 %149, 268435455
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, 1073741824
  store i32 %152, i32* %3, align 4
  %153 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @SBI_MPHY, align 4
  %156 = call i32 @intel_sbi_write(%struct.drm_i915_private* %153, i32 8684, i32 %154, i32 %155)
  ret void
}

declare dso_local i32 @intel_sbi_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_sbi_write(%struct.drm_i915_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
