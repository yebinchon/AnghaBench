; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_frag_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_frag_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_ib = type { i32 }

@CHIP_CAYMAN = common dso_local global i64 0, align 8
@CHIP_ARUBA = common dso_local global i64 0, align 8
@R600_PTE_FRAG_256KB = common dso_local global i32 0, align 4
@R600_PTE_FRAG_64KB = common dso_local global i32 0, align 4
@R600_PTE_SYSTEM = common dso_local global i32 0, align 4
@R600_PTE_VALID = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ib*, i32, i32, i32, i32)* @radeon_vm_frag_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_vm_frag_ptes(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_ib*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_CAYMAN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_ARUBA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %6
  %30 = load i32, i32* @R600_PTE_FRAG_256KB, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @R600_PTE_FRAG_64KB, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %13, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHIP_CAYMAN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CHIP_ARUBA, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %40, %33
  %47 = phi i1 [ true, %33 ], [ %45, %40 ]
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 512, i32 128
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @ALIGN(i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %54, 1
  %56 = xor i32 %55, -1
  %57 = and i32 %53, %56
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @R600_PTE_SYSTEM, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @R600_PTE_VALID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67, %62, %46
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sdiv i32 %74, 8
  store i32 %75, i32* %17, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %77 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @radeon_vm_set_pages(%struct.radeon_device* %76, %struct.radeon_ib* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %142

84:                                               ; preds = %67
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sdiv i32 %91, 8
  store i32 %92, i32* %17, align 4
  %93 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %94 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @radeon_vm_set_pages(%struct.radeon_device* %93, %struct.radeon_ib* %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %102 = load i32, i32* %17, align 4
  %103 = mul i32 %101, %102
  %104 = load i32, i32* %11, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %88, %84
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sdiv i32 %109, 8
  store i32 %110, i32* %17, align 4
  %111 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %112 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @radeon_vm_set_pages(%struct.radeon_device* %111, %struct.radeon_ib* %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %119)
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %106
  %125 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %126 = load i32, i32* %17, align 4
  %127 = mul i32 %125, %126
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %16, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sdiv i32 %132, 8
  store i32 %133, i32* %17, align 4
  %134 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %135 = load %struct.radeon_ib*, %struct.radeon_ib** %8, align 8
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @radeon_vm_set_pages(%struct.radeon_device* %134, %struct.radeon_ib* %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %71, %124, %106
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @radeon_vm_set_pages(%struct.radeon_device*, %struct.radeon_ib*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
