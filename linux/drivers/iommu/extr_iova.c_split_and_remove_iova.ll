; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_split_and_remove_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iova.c_split_and_remove_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iova_domain = type { i32, i32 }
%struct.iova = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iova* @split_and_remove_iova(%struct.iova_domain* %0, %struct.iova* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.iova*, align 8
  %6 = alloca %struct.iova_domain*, align 8
  %7 = alloca %struct.iova*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iova*, align 8
  %12 = alloca %struct.iova*, align 8
  store %struct.iova_domain* %0, %struct.iova_domain** %6, align 8
  store %struct.iova* %1, %struct.iova** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.iova* null, %struct.iova** %11, align 8
  store %struct.iova* null, %struct.iova** %12, align 8
  %13 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %14 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.iova*, %struct.iova** %7, align 8
  %18 = getelementptr inbounds %struct.iova, %struct.iova* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.iova*, %struct.iova** %7, align 8
  %24 = getelementptr inbounds %struct.iova, %struct.iova* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = call %struct.iova* @alloc_and_init_iova(i64 %25, i64 %27)
  store %struct.iova* %28, %struct.iova** %11, align 8
  %29 = load %struct.iova*, %struct.iova** %11, align 8
  %30 = icmp eq %struct.iova* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %86

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.iova*, %struct.iova** %7, align 8
  %35 = getelementptr inbounds %struct.iova, %struct.iova* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  %42 = load %struct.iova*, %struct.iova** %7, align 8
  %43 = getelementptr inbounds %struct.iova, %struct.iova* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.iova* @alloc_and_init_iova(i64 %41, i64 %44)
  store %struct.iova* %45, %struct.iova** %12, align 8
  %46 = load %struct.iova*, %struct.iova** %12, align 8
  %47 = icmp eq %struct.iova* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %86

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %52 = load %struct.iova*, %struct.iova** %7, align 8
  %53 = call i32 @__cached_rbnode_delete_update(%struct.iova_domain* %51, %struct.iova* %52)
  %54 = load %struct.iova*, %struct.iova** %7, align 8
  %55 = getelementptr inbounds %struct.iova, %struct.iova* %54, i32 0, i32 2
  %56 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %57 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %56, i32 0, i32 1
  %58 = call i32 @rb_erase(i32* %55, i32* %57)
  %59 = load %struct.iova*, %struct.iova** %11, align 8
  %60 = icmp ne %struct.iova* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %63 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %62, i32 0, i32 1
  %64 = load %struct.iova*, %struct.iova** %11, align 8
  %65 = call i32 @iova_insert_rbtree(i32* %63, %struct.iova* %64, i32* null)
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.iova*, %struct.iova** %7, align 8
  %68 = getelementptr inbounds %struct.iova, %struct.iova* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %61, %50
  %70 = load %struct.iova*, %struct.iova** %12, align 8
  %71 = icmp ne %struct.iova* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %74 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %73, i32 0, i32 1
  %75 = load %struct.iova*, %struct.iova** %12, align 8
  %76 = call i32 @iova_insert_rbtree(i32* %74, %struct.iova* %75, i32* null)
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.iova*, %struct.iova** %7, align 8
  %79 = getelementptr inbounds %struct.iova, %struct.iova* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %69
  %81 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %82 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %81, i32 0, i32 0
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.iova*, %struct.iova** %7, align 8
  store %struct.iova* %85, %struct.iova** %5, align 8
  br label %97

86:                                               ; preds = %48, %31
  %87 = load %struct.iova_domain*, %struct.iova_domain** %6, align 8
  %88 = getelementptr inbounds %struct.iova_domain, %struct.iova_domain* %87, i32 0, i32 0
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.iova*, %struct.iova** %11, align 8
  %92 = icmp ne %struct.iova* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.iova*, %struct.iova** %11, align 8
  %95 = call i32 @free_iova_mem(%struct.iova* %94)
  br label %96

96:                                               ; preds = %93, %86
  store %struct.iova* null, %struct.iova** %5, align 8
  br label %97

97:                                               ; preds = %96, %80
  %98 = load %struct.iova*, %struct.iova** %5, align 8
  ret %struct.iova* %98
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.iova* @alloc_and_init_iova(i64, i64) #1

declare dso_local i32 @__cached_rbnode_delete_update(%struct.iova_domain*, %struct.iova*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @iova_insert_rbtree(i32*, %struct.iova*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_iova_mem(%struct.iova*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
