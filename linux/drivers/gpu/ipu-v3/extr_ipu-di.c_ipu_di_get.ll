; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_di = type { i32 }
%struct.ipu_soc = type { %struct.ipu_di** }

@EINVAL = common dso_local global i32 0, align 4
@ipu_di_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipu_di* @ipu_di_get(%struct.ipu_soc* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_di*, align 8
  %4 = alloca %struct.ipu_soc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_di*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.ipu_di* @ERR_PTR(i32 %11)
  store %struct.ipu_di* %12, %struct.ipu_di** %3, align 8
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %15 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %14, i32 0, i32 0
  %16 = load %struct.ipu_di**, %struct.ipu_di*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ipu_di*, %struct.ipu_di** %16, i64 %18
  %20 = load %struct.ipu_di*, %struct.ipu_di** %19, align 8
  store %struct.ipu_di* %20, %struct.ipu_di** %6, align 8
  %21 = call i32 @mutex_lock(i32* @ipu_di_lock)
  %22 = load %struct.ipu_di*, %struct.ipu_di** %6, align 8
  %23 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ipu_di* @ERR_PTR(i32 %28)
  store %struct.ipu_di* %29, %struct.ipu_di** %6, align 8
  br label %33

30:                                               ; preds = %13
  %31 = load %struct.ipu_di*, %struct.ipu_di** %6, align 8
  %32 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = call i32 @mutex_unlock(i32* @ipu_di_lock)
  %35 = load %struct.ipu_di*, %struct.ipu_di** %6, align 8
  store %struct.ipu_di* %35, %struct.ipu_di** %3, align 8
  br label %36

36:                                               ; preds = %33, %9
  %37 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  ret %struct.ipu_di* %37
}

declare dso_local %struct.ipu_di* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
