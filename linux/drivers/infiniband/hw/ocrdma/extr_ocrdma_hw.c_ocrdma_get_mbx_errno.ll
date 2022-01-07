; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_get_mbx_errno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_get_mbx_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCRDMA_MBX_RSP_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_ASTATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_ASTATUS_SHIFT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ocrdma_get_mbx_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_get_mbx_errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @OCRDMA_MBX_RSP_STATUS_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @OCRDMA_MBX_RSP_STATUS_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @OCRDMA_MBX_RSP_ASTATUS_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @OCRDMA_MBX_RSP_ASTATUS_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %38 [
    i32 142, label %17
    i32 146, label %17
    i32 152, label %20
    i32 158, label %20
    i32 149, label %20
    i32 151, label %20
    i32 159, label %20
    i32 145, label %20
    i32 150, label %20
    i32 138, label %20
    i32 139, label %20
    i32 161, label %20
    i32 153, label %20
    i32 155, label %20
    i32 148, label %20
    i32 156, label %20
    i32 157, label %20
    i32 160, label %20
    i32 154, label %20
    i32 163, label %20
    i32 130, label %20
    i32 128, label %20
    i32 140, label %23
    i32 137, label %23
    i32 143, label %23
    i32 144, label %23
    i32 136, label %26
    i32 133, label %26
    i32 135, label %26
    i32 129, label %26
    i32 141, label %26
    i32 147, label %26
    i32 134, label %26
    i32 132, label %26
    i32 131, label %26
    i32 162, label %29
  ]

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %1, %1, %1, %1
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %27 = load i32, i32* @ENOBUFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %34 [
    i32 164, label %31
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %37, %26, %23, %20, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
