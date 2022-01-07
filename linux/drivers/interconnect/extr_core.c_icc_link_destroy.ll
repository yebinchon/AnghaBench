; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_link_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_icc_link_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_node = type { i64, %struct.icc_node** }

@EINVAL = common dso_local global i32 0, align 4
@icc_lock = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icc_link_destroy(%struct.icc_node* %0, %struct.icc_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icc_node*, align 8
  %5 = alloca %struct.icc_node*, align 8
  %6 = alloca %struct.icc_node**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.icc_node* %0, %struct.icc_node** %4, align 8
  store %struct.icc_node* %1, %struct.icc_node** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %10 = call i64 @IS_ERR_OR_NULL(%struct.icc_node* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %91

15:                                               ; preds = %2
  %16 = load %struct.icc_node*, %struct.icc_node** %5, align 8
  %17 = call i64 @IS_ERR_OR_NULL(%struct.icc_node* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %91

22:                                               ; preds = %15
  %23 = call i32 @mutex_lock(i32* @icc_lock)
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %41, %22
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %27 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %32 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %31, i32 0, i32 1
  %33 = load %struct.icc_node**, %struct.icc_node*** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.icc_node*, %struct.icc_node** %33, i64 %34
  %36 = load %struct.icc_node*, %struct.icc_node** %35, align 8
  %37 = load %struct.icc_node*, %struct.icc_node** %5, align 8
  %38 = icmp eq %struct.icc_node* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %24

44:                                               ; preds = %39, %24
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %47 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @ENXIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %88

56:                                               ; preds = %44
  %57 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %58 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %57, i32 0, i32 1
  %59 = load %struct.icc_node**, %struct.icc_node*** %58, align 8
  %60 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %61 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %61, align 8
  %64 = getelementptr inbounds %struct.icc_node*, %struct.icc_node** %59, i64 %63
  %65 = load %struct.icc_node*, %struct.icc_node** %64, align 8
  %66 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %67 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %66, i32 0, i32 1
  %68 = load %struct.icc_node**, %struct.icc_node*** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.icc_node*, %struct.icc_node** %68, i64 %69
  store %struct.icc_node* %65, %struct.icc_node** %70, align 8
  %71 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %72 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %71, i32 0, i32 1
  %73 = load %struct.icc_node**, %struct.icc_node*** %72, align 8
  %74 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %75 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.icc_node** @krealloc(%struct.icc_node** %73, i32 %78, i32 %79)
  store %struct.icc_node** %80, %struct.icc_node*** %6, align 8
  %81 = load %struct.icc_node**, %struct.icc_node*** %6, align 8
  %82 = icmp ne %struct.icc_node** %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %56
  %84 = load %struct.icc_node**, %struct.icc_node*** %6, align 8
  %85 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %86 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %85, i32 0, i32 1
  store %struct.icc_node** %84, %struct.icc_node*** %86, align 8
  br label %87

87:                                               ; preds = %83, %56
  br label %88

88:                                               ; preds = %87, %53
  %89 = call i32 @mutex_unlock(i32* @icc_lock)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %19, %12
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.icc_node*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.icc_node** @krealloc(%struct.icc_node**, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
