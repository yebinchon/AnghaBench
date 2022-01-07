; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_64_lpae_alloc_pgtable_s2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_64_lpae_alloc_pgtable_s2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable = type { i32 }
%struct.io_pgtable_cfg = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.arm_lpae_io_pgtable = type { i64, i64, i64, %struct.io_pgtable, i32 }

@IO_PGTABLE_QUIRK_NON_STRICT = common dso_local global i32 0, align 4
@ARM_LPAE_MAX_LEVELS = common dso_local global i64 0, align 8
@ARM_LPAE_S2_MAX_CONCAT_PAGES = common dso_local global i64 0, align 8
@ARM_64_LPAE_S2_TCR_RES1 = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_SH_IS = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_SH0_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_RGN_WBWA = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_IRGN0_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_ORGN0_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_TG0_4K = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_TG0_16K = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_TG0_64K = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_32_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_36_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_40_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_42_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_44_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_48_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_52_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_T0SZ_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_SL0_MASK = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_SL0_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.io_pgtable* (%struct.io_pgtable_cfg*, i8*)* @arm_64_lpae_alloc_pgtable_s2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.io_pgtable* @arm_64_lpae_alloc_pgtable_s2(%struct.io_pgtable_cfg* %0, i8* %1) #0 {
  %3 = alloca %struct.io_pgtable*, align 8
  %4 = alloca %struct.io_pgtable_cfg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %9 = alloca i64, align 8
  store %struct.io_pgtable_cfg* %0, %struct.io_pgtable_cfg** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %11 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IO_PGTABLE_QUIRK_NON_STRICT, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %179

18:                                               ; preds = %2
  %19 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %20 = call %struct.arm_lpae_io_pgtable* @arm_lpae_alloc_pgtable(%struct.io_pgtable_cfg* %19)
  store %struct.arm_lpae_io_pgtable* %20, %struct.arm_lpae_io_pgtable** %8, align 8
  %21 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %22 = icmp ne %struct.arm_lpae_io_pgtable* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %179

24:                                               ; preds = %18
  %25 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %26 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ARM_LPAE_MAX_LEVELS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %32 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ilog2(i32 4)
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @ARM_LPAE_S2_MAX_CONCAT_PAGES, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %30
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %42 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = shl i64 %40, %43
  %45 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %46 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %48 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %39, %30
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i64, i64* @ARM_64_LPAE_S2_TCR_RES1, align 8
  %54 = load i64, i64* @ARM_LPAE_TCR_SH_IS, align 8
  %55 = load i64, i64* @ARM_LPAE_TCR_SH0_SHIFT, align 8
  %56 = shl i64 %54, %55
  %57 = or i64 %53, %56
  %58 = load i64, i64* @ARM_LPAE_TCR_RGN_WBWA, align 8
  %59 = load i64, i64* @ARM_LPAE_TCR_IRGN0_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = or i64 %57, %60
  %62 = load i64, i64* @ARM_LPAE_TCR_RGN_WBWA, align 8
  %63 = load i64, i64* @ARM_LPAE_TCR_ORGN0_SHIFT, align 8
  %64 = shl i64 %62, %63
  %65 = or i64 %61, %64
  store i64 %65, i64* %6, align 8
  %66 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %67 = call i64 @ARM_LPAE_START_LVL(%struct.arm_lpae_io_pgtable* %66)
  store i64 %67, i64* %7, align 8
  %68 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %69 = call i32 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable* %68)
  switch i32 %69, label %84 [
    i32 129, label %70
    i32 130, label %76
    i32 128, label %80
  ]

70:                                               ; preds = %52
  %71 = load i64, i64* @ARM_LPAE_TCR_TG0_4K, align 8
  %72 = load i64, i64* %6, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %7, align 8
  br label %84

76:                                               ; preds = %52
  %77 = load i64, i64* @ARM_LPAE_TCR_TG0_16K, align 8
  %78 = load i64, i64* %6, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %6, align 8
  br label %84

80:                                               ; preds = %52
  %81 = load i64, i64* @ARM_LPAE_TCR_TG0_64K, align 8
  %82 = load i64, i64* %6, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %52, %80, %76, %70
  %85 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %86 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %130 [
    i32 32, label %88
    i32 36, label %94
    i32 40, label %100
    i32 42, label %106
    i32 44, label %112
    i32 48, label %118
    i32 52, label %124
  ]

88:                                               ; preds = %84
  %89 = load i64, i64* @ARM_LPAE_TCR_PS_32_BIT, align 8
  %90 = load i64, i64* @ARM_LPAE_TCR_PS_SHIFT, align 8
  %91 = shl i64 %89, %90
  %92 = load i64, i64* %6, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %6, align 8
  br label %131

94:                                               ; preds = %84
  %95 = load i64, i64* @ARM_LPAE_TCR_PS_36_BIT, align 8
  %96 = load i64, i64* @ARM_LPAE_TCR_PS_SHIFT, align 8
  %97 = shl i64 %95, %96
  %98 = load i64, i64* %6, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %6, align 8
  br label %131

100:                                              ; preds = %84
  %101 = load i64, i64* @ARM_LPAE_TCR_PS_40_BIT, align 8
  %102 = load i64, i64* @ARM_LPAE_TCR_PS_SHIFT, align 8
  %103 = shl i64 %101, %102
  %104 = load i64, i64* %6, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %6, align 8
  br label %131

106:                                              ; preds = %84
  %107 = load i64, i64* @ARM_LPAE_TCR_PS_42_BIT, align 8
  %108 = load i64, i64* @ARM_LPAE_TCR_PS_SHIFT, align 8
  %109 = shl i64 %107, %108
  %110 = load i64, i64* %6, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %6, align 8
  br label %131

112:                                              ; preds = %84
  %113 = load i64, i64* @ARM_LPAE_TCR_PS_44_BIT, align 8
  %114 = load i64, i64* @ARM_LPAE_TCR_PS_SHIFT, align 8
  %115 = shl i64 %113, %114
  %116 = load i64, i64* %6, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %6, align 8
  br label %131

118:                                              ; preds = %84
  %119 = load i64, i64* @ARM_LPAE_TCR_PS_48_BIT, align 8
  %120 = load i64, i64* @ARM_LPAE_TCR_PS_SHIFT, align 8
  %121 = shl i64 %119, %120
  %122 = load i64, i64* %6, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %6, align 8
  br label %131

124:                                              ; preds = %84
  %125 = load i64, i64* @ARM_LPAE_TCR_PS_52_BIT, align 8
  %126 = load i64, i64* @ARM_LPAE_TCR_PS_SHIFT, align 8
  %127 = shl i64 %125, %126
  %128 = load i64, i64* %6, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %6, align 8
  br label %131

130:                                              ; preds = %84
  br label %176

131:                                              ; preds = %124, %118, %112, %106, %100, %94, %88
  %132 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %133 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = sub i64 64, %134
  %136 = load i64, i64* @ARM_LPAE_TCR_T0SZ_SHIFT, align 8
  %137 = shl i64 %135, %136
  %138 = load i64, i64* %6, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %6, align 8
  %140 = load i64, i64* %7, align 8
  %141 = xor i64 %140, -1
  %142 = load i64, i64* @ARM_LPAE_TCR_SL0_MASK, align 8
  %143 = and i64 %141, %142
  %144 = load i64, i64* @ARM_LPAE_TCR_SL0_SHIFT, align 8
  %145 = shl i64 %143, %144
  %146 = load i64, i64* %6, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %150 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store i64 %148, i64* %151, align 8
  %152 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %153 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %157 = call i32 @__arm_lpae_alloc_pages(i64 %154, i32 %155, %struct.io_pgtable_cfg* %156)
  %158 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %159 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 4
  %160 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %161 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %131
  br label %176

165:                                              ; preds = %131
  %166 = call i32 (...) @wmb()
  %167 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %168 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @virt_to_phys(i32 %169)
  %171 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %172 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 8
  %174 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %175 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %174, i32 0, i32 3
  store %struct.io_pgtable* %175, %struct.io_pgtable** %3, align 8
  br label %179

176:                                              ; preds = %164, %130
  %177 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %8, align 8
  %178 = call i32 @kfree(%struct.arm_lpae_io_pgtable* %177)
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %179

179:                                              ; preds = %176, %165, %23, %17
  %180 = load %struct.io_pgtable*, %struct.io_pgtable** %3, align 8
  ret %struct.io_pgtable* %180
}

declare dso_local %struct.arm_lpae_io_pgtable* @arm_lpae_alloc_pgtable(%struct.io_pgtable_cfg*) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i64 @ARM_LPAE_START_LVL(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @__arm_lpae_alloc_pages(i64, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @kfree(%struct.arm_lpae_io_pgtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
