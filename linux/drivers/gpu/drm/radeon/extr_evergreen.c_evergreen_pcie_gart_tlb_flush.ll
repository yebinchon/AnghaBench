; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pcie_gart_tlb_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pcie_gart_tlb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@HDP_MEM_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT0_REQUEST_RESPONSE = common dso_local global i32 0, align 4
@RESPONSE_TYPE_MASK = common dso_local global i32 0, align 4
@RESPONSE_TYPE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"[drm] r600 flush TLB failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_pcie_gart_tlb_flush(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i32, i32* @HDP_MEM_COHERENCY_FLUSH_CNTL, align 4
  %6 = call i32 @WREG32(i32 %5, i32 1)
  %7 = load i32, i32* @VM_CONTEXT0_REQUEST_RESPONSE, align 4
  %8 = call i32 @REQUEST_TYPE(i32 1)
  %9 = call i32 @WREG32(i32 %7, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load i32, i32* @VM_CONTEXT0_REQUEST_RESPONSE, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @RESPONSE_TYPE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @RESPONSE_TYPE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %37

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %37

32:                                               ; preds = %28
  %33 = call i32 @udelay(i32 1)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %10

37:                                               ; preds = %26, %31, %10
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @REQUEST_TYPE(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
