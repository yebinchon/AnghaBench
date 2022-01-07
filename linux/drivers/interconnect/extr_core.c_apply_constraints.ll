; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_apply_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_apply_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_path = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.icc_node* }
%struct.icc_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.icc_node*, %struct.icc_node*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icc_path*)* @apply_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_constraints(%struct.icc_path* %0) #0 {
  %2 = alloca %struct.icc_path*, align 8
  %3 = alloca %struct.icc_node*, align 8
  %4 = alloca %struct.icc_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.icc_path* %0, %struct.icc_path** %2, align 8
  store %struct.icc_node* null, %struct.icc_node** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %50, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.icc_path*, %struct.icc_path** %2, align 8
  %12 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %9
  %16 = load %struct.icc_path*, %struct.icc_path** %2, align 8
  %17 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.icc_node*, %struct.icc_node** %22, align 8
  store %struct.icc_node* %23, %struct.icc_node** %3, align 8
  %24 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %25 = icmp ne %struct.icc_node* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  %28 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %31 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %15
  %35 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  store %struct.icc_node* %35, %struct.icc_node** %4, align 8
  br label %50

36:                                               ; preds = %26
  %37 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  %38 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.icc_node*, %struct.icc_node*)*, i32 (%struct.icc_node*, %struct.icc_node*)** %40, align 8
  %42 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %43 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  %44 = call i32 %41(%struct.icc_node* %42, %struct.icc_node* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.icc_node*, %struct.icc_node** %3, align 8
  store %struct.icc_node* %49, %struct.icc_node** %4, align 8
  br label %50

50:                                               ; preds = %48, %34
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %9

53:                                               ; preds = %9
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
