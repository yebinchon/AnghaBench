; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_pbl_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_mem.c_siw_pbl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_pbl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.siw_pbl* @siw_pbl_alloc(i32 %0) #0 {
  %2 = alloca %struct.siw_pbl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_pbl*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 4, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.siw_pbl* @ERR_PTR(i32 %10)
  store %struct.siw_pbl* %11, %struct.siw_pbl** %2, align 8
  br label %35

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.siw_pbl* @kzalloc(i32 %21, i32 %22)
  store %struct.siw_pbl* %23, %struct.siw_pbl** %4, align 8
  %24 = load %struct.siw_pbl*, %struct.siw_pbl** %4, align 8
  %25 = icmp ne %struct.siw_pbl* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %12
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.siw_pbl* @ERR_PTR(i32 %28)
  store %struct.siw_pbl* %29, %struct.siw_pbl** %2, align 8
  br label %35

30:                                               ; preds = %12
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.siw_pbl*, %struct.siw_pbl** %4, align 8
  %33 = getelementptr inbounds %struct.siw_pbl, %struct.siw_pbl* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.siw_pbl*, %struct.siw_pbl** %4, align 8
  store %struct.siw_pbl* %34, %struct.siw_pbl** %2, align 8
  br label %35

35:                                               ; preds = %30, %26, %8
  %36 = load %struct.siw_pbl*, %struct.siw_pbl** %2, align 8
  ret %struct.siw_pbl* %36
}

declare dso_local %struct.siw_pbl* @ERR_PTR(i32) #1

declare dso_local %struct.siw_pbl* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
