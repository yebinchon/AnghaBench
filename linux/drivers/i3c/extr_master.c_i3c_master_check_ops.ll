; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_check_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_check_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller_ops = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller_ops*)* @i3c_master_check_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_check_ops(%struct.i3c_master_controller_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_master_controller_ops*, align 8
  store %struct.i3c_master_controller_ops* %0, %struct.i3c_master_controller_ops** %3, align 8
  %4 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %5 = icmp ne %struct.i3c_master_controller_ops* %4, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %8 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %13 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %18 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %23 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %28 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %21, %16, %11, %6, %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %63

34:                                               ; preds = %26
  %35 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %36 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %41 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %46 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %51 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.i3c_master_controller_ops*, %struct.i3c_master_controller_ops** %3, align 8
  %56 = getelementptr inbounds %struct.i3c_master_controller_ops, %struct.i3c_master_controller_ops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54, %49, %44, %39
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %54, %34
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %59, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
