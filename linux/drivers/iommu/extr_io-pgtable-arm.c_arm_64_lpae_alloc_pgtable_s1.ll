; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_64_lpae_alloc_pgtable_s1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_64_lpae_alloc_pgtable_s1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable = type { i32 }
%struct.io_pgtable_cfg = type { i32, i32, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64*, i32* }
%struct.arm_lpae_io_pgtable = type { %struct.io_pgtable, i32, i32 }

@IO_PGTABLE_QUIRK_ARM_NS = common dso_local global i32 0, align 4
@IO_PGTABLE_QUIRK_NON_STRICT = common dso_local global i32 0, align 4
@ARM_LPAE_TCR_SH_IS = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_SH0_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_RGN_WBWA = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_IRGN0_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_ORGN0_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_SH_OS = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_RGN_NC = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_TG0_4K = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_TG0_16K = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_TG0_64K = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_32_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_IPS_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_36_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_40_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_42_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_44_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_48_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_PS_52_BIT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_T0SZ_SHIFT = common dso_local global i64 0, align 8
@ARM_LPAE_TCR_EPD1 = common dso_local global i64 0, align 8
@ARM_LPAE_MAIR_ATTR_NC = common dso_local global i64 0, align 8
@ARM_LPAE_MAIR_ATTR_IDX_NC = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_WBRWA = common dso_local global i64 0, align 8
@ARM_LPAE_MAIR_ATTR_IDX_CACHE = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_DEVICE = common dso_local global i64 0, align 8
@ARM_LPAE_MAIR_ATTR_IDX_DEV = common dso_local global i32 0, align 4
@ARM_LPAE_MAIR_ATTR_INC_OWBRWA = common dso_local global i64 0, align 8
@ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.io_pgtable* (%struct.io_pgtable_cfg*, i8*)* @arm_64_lpae_alloc_pgtable_s1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.io_pgtable* @arm_64_lpae_alloc_pgtable_s1(%struct.io_pgtable_cfg* %0, i8* %1) #0 {
  %3 = alloca %struct.io_pgtable*, align 8
  %4 = alloca %struct.io_pgtable_cfg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.arm_lpae_io_pgtable*, align 8
  store %struct.io_pgtable_cfg* %0, %struct.io_pgtable_cfg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %9 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IO_PGTABLE_QUIRK_ARM_NS, align 4
  %12 = load i32, i32* @IO_PGTABLE_QUIRK_NON_STRICT, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %195

18:                                               ; preds = %2
  %19 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %20 = call %struct.arm_lpae_io_pgtable* @arm_lpae_alloc_pgtable(%struct.io_pgtable_cfg* %19)
  store %struct.arm_lpae_io_pgtable* %20, %struct.arm_lpae_io_pgtable** %7, align 8
  %21 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %7, align 8
  %22 = icmp ne %struct.arm_lpae_io_pgtable* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %195

24:                                               ; preds = %18
  %25 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i64, i64* @ARM_LPAE_TCR_SH_IS, align 8
  %31 = load i64, i64* @ARM_LPAE_TCR_SH0_SHIFT, align 8
  %32 = shl i64 %30, %31
  %33 = load i64, i64* @ARM_LPAE_TCR_RGN_WBWA, align 8
  %34 = load i64, i64* @ARM_LPAE_TCR_IRGN0_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = or i64 %32, %35
  %37 = load i64, i64* @ARM_LPAE_TCR_RGN_WBWA, align 8
  %38 = load i64, i64* @ARM_LPAE_TCR_ORGN0_SHIFT, align 8
  %39 = shl i64 %37, %38
  %40 = or i64 %36, %39
  store i64 %40, i64* %6, align 8
  br label %53

41:                                               ; preds = %24
  %42 = load i64, i64* @ARM_LPAE_TCR_SH_OS, align 8
  %43 = load i64, i64* @ARM_LPAE_TCR_SH0_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load i64, i64* @ARM_LPAE_TCR_RGN_NC, align 8
  %46 = load i64, i64* @ARM_LPAE_TCR_IRGN0_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = or i64 %44, %47
  %49 = load i64, i64* @ARM_LPAE_TCR_RGN_NC, align 8
  %50 = load i64, i64* @ARM_LPAE_TCR_ORGN0_SHIFT, align 8
  %51 = shl i64 %49, %50
  %52 = or i64 %48, %51
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %41, %29
  %54 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %7, align 8
  %55 = call i32 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable* %54)
  switch i32 %55, label %68 [
    i32 129, label %56
    i32 130, label %60
    i32 128, label %64
  ]

56:                                               ; preds = %53
  %57 = load i64, i64* @ARM_LPAE_TCR_TG0_4K, align 8
  %58 = load i64, i64* %6, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %6, align 8
  br label %68

60:                                               ; preds = %53
  %61 = load i64, i64* @ARM_LPAE_TCR_TG0_16K, align 8
  %62 = load i64, i64* %6, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %6, align 8
  br label %68

64:                                               ; preds = %53
  %65 = load i64, i64* @ARM_LPAE_TCR_TG0_64K, align 8
  %66 = load i64, i64* %6, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %53, %64, %60, %56
  %69 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %70 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %114 [
    i32 32, label %72
    i32 36, label %78
    i32 40, label %84
    i32 42, label %90
    i32 44, label %96
    i32 48, label %102
    i32 52, label %108
  ]

72:                                               ; preds = %68
  %73 = load i64, i64* @ARM_LPAE_TCR_PS_32_BIT, align 8
  %74 = load i64, i64* @ARM_LPAE_TCR_IPS_SHIFT, align 8
  %75 = shl i64 %73, %74
  %76 = load i64, i64* %6, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %115

78:                                               ; preds = %68
  %79 = load i64, i64* @ARM_LPAE_TCR_PS_36_BIT, align 8
  %80 = load i64, i64* @ARM_LPAE_TCR_IPS_SHIFT, align 8
  %81 = shl i64 %79, %80
  %82 = load i64, i64* %6, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %6, align 8
  br label %115

84:                                               ; preds = %68
  %85 = load i64, i64* @ARM_LPAE_TCR_PS_40_BIT, align 8
  %86 = load i64, i64* @ARM_LPAE_TCR_IPS_SHIFT, align 8
  %87 = shl i64 %85, %86
  %88 = load i64, i64* %6, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %6, align 8
  br label %115

90:                                               ; preds = %68
  %91 = load i64, i64* @ARM_LPAE_TCR_PS_42_BIT, align 8
  %92 = load i64, i64* @ARM_LPAE_TCR_IPS_SHIFT, align 8
  %93 = shl i64 %91, %92
  %94 = load i64, i64* %6, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %6, align 8
  br label %115

96:                                               ; preds = %68
  %97 = load i64, i64* @ARM_LPAE_TCR_PS_44_BIT, align 8
  %98 = load i64, i64* @ARM_LPAE_TCR_IPS_SHIFT, align 8
  %99 = shl i64 %97, %98
  %100 = load i64, i64* %6, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %6, align 8
  br label %115

102:                                              ; preds = %68
  %103 = load i64, i64* @ARM_LPAE_TCR_PS_48_BIT, align 8
  %104 = load i64, i64* @ARM_LPAE_TCR_IPS_SHIFT, align 8
  %105 = shl i64 %103, %104
  %106 = load i64, i64* %6, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %6, align 8
  br label %115

108:                                              ; preds = %68
  %109 = load i64, i64* @ARM_LPAE_TCR_PS_52_BIT, align 8
  %110 = load i64, i64* @ARM_LPAE_TCR_IPS_SHIFT, align 8
  %111 = shl i64 %109, %110
  %112 = load i64, i64* %6, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %6, align 8
  br label %115

114:                                              ; preds = %68
  br label %192

115:                                              ; preds = %108, %102, %96, %90, %84, %78, %72
  %116 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %117 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 64, %118
  %120 = load i64, i64* @ARM_LPAE_TCR_T0SZ_SHIFT, align 8
  %121 = shl i64 %119, %120
  %122 = load i64, i64* %6, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* @ARM_LPAE_TCR_EPD1, align 8
  %125 = load i64, i64* %6, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %129 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* @ARM_LPAE_MAIR_ATTR_NC, align 8
  %132 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_NC, align 4
  %133 = call i64 @ARM_LPAE_MAIR_ATTR_SHIFT(i32 %132)
  %134 = shl i64 %131, %133
  %135 = load i64, i64* @ARM_LPAE_MAIR_ATTR_WBRWA, align 8
  %136 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_CACHE, align 4
  %137 = call i64 @ARM_LPAE_MAIR_ATTR_SHIFT(i32 %136)
  %138 = shl i64 %135, %137
  %139 = or i64 %134, %138
  %140 = load i64, i64* @ARM_LPAE_MAIR_ATTR_DEVICE, align 8
  %141 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_DEV, align 4
  %142 = call i64 @ARM_LPAE_MAIR_ATTR_SHIFT(i32 %141)
  %143 = shl i64 %140, %142
  %144 = or i64 %139, %143
  %145 = load i64, i64* @ARM_LPAE_MAIR_ATTR_INC_OWBRWA, align 8
  %146 = load i32, i32* @ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE, align 4
  %147 = call i64 @ARM_LPAE_MAIR_ATTR_SHIFT(i32 %146)
  %148 = shl i64 %145, %147
  %149 = or i64 %144, %148
  store i64 %149, i64* %6, align 8
  %150 = load i64, i64* %6, align 8
  %151 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %152 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  store i64 %150, i64* %155, align 8
  %156 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %157 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  store i64 0, i64* %160, align 8
  %161 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %7, align 8
  %162 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %166 = call i32 @__arm_lpae_alloc_pages(i32 %163, i32 %164, %struct.io_pgtable_cfg* %165)
  %167 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %7, align 8
  %168 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %7, align 8
  %170 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %115
  br label %192

174:                                              ; preds = %115
  %175 = call i32 (...) @wmb()
  %176 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %7, align 8
  %177 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @virt_to_phys(i32 %178)
  %180 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %181 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %179, i32* %184, align 4
  %185 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %4, align 8
  %186 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32 0, i32* %189, align 4
  %190 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %7, align 8
  %191 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %190, i32 0, i32 0
  store %struct.io_pgtable* %191, %struct.io_pgtable** %3, align 8
  br label %195

192:                                              ; preds = %173, %114
  %193 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %7, align 8
  %194 = call i32 @kfree(%struct.arm_lpae_io_pgtable* %193)
  store %struct.io_pgtable* null, %struct.io_pgtable** %3, align 8
  br label %195

195:                                              ; preds = %192, %174, %23, %17
  %196 = load %struct.io_pgtable*, %struct.io_pgtable** %3, align 8
  ret %struct.io_pgtable* %196
}

declare dso_local %struct.arm_lpae_io_pgtable* @arm_lpae_alloc_pgtable(%struct.io_pgtable_cfg*) #1

declare dso_local i32 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @ARM_LPAE_MAIR_ATTR_SHIFT(i32) #1

declare dso_local i32 @__arm_lpae_alloc_pages(i32, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @kfree(%struct.arm_lpae_io_pgtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
