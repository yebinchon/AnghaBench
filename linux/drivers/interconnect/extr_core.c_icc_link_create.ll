; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_link_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_link_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_node = type { i32, %struct.icc_node**, i32 }

@EINVAL = common dso_local global i32 0, align 4
@icc_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icc_link_create(%struct.icc_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icc_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.icc_node*, align 8
  %7 = alloca %struct.icc_node**, align 8
  %8 = alloca i32, align 4
  store %struct.icc_node* %0, %struct.icc_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %10 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = call i32 @mutex_lock(i32* @icc_lock)
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.icc_node* @node_find(i32 %18)
  store %struct.icc_node* %19, %struct.icc_node** %6, align 8
  %20 = load %struct.icc_node*, %struct.icc_node** %6, align 8
  %21 = icmp ne %struct.icc_node* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.icc_node* @icc_node_create_nolock(i32 %23)
  store %struct.icc_node* %24, %struct.icc_node** %6, align 8
  %25 = load %struct.icc_node*, %struct.icc_node** %6, align 8
  %26 = call i64 @IS_ERR(%struct.icc_node* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.icc_node*, %struct.icc_node** %6, align 8
  %30 = call i32 @PTR_ERR(%struct.icc_node* %29)
  store i32 %30, i32* %8, align 4
  br label %64

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %16
  %33 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %34 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %33, i32 0, i32 1
  %35 = load %struct.icc_node**, %struct.icc_node*** %34, align 8
  %36 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %37 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.icc_node** @krealloc(%struct.icc_node** %35, i32 %42, i32 %43)
  store %struct.icc_node** %44, %struct.icc_node*** %7, align 8
  %45 = load %struct.icc_node**, %struct.icc_node*** %7, align 8
  %46 = icmp ne %struct.icc_node** %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %32
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %64

50:                                               ; preds = %32
  %51 = load %struct.icc_node**, %struct.icc_node*** %7, align 8
  %52 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %53 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %52, i32 0, i32 1
  store %struct.icc_node** %51, %struct.icc_node*** %53, align 8
  %54 = load %struct.icc_node*, %struct.icc_node** %6, align 8
  %55 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %56 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %55, i32 0, i32 1
  %57 = load %struct.icc_node**, %struct.icc_node*** %56, align 8
  %58 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %59 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.icc_node*, %struct.icc_node** %57, i64 %62
  store %struct.icc_node* %54, %struct.icc_node** %63, align 8
  br label %64

64:                                               ; preds = %50, %47, %28
  %65 = call i32 @mutex_unlock(i32* @icc_lock)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.icc_node* @node_find(i32) #1

declare dso_local %struct.icc_node* @icc_node_create_nolock(i32) #1

declare dso_local i64 @IS_ERR(%struct.icc_node*) #1

declare dso_local i32 @PTR_ERR(%struct.icc_node*) #1

declare dso_local %struct.icc_node** @krealloc(%struct.icc_node**, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
