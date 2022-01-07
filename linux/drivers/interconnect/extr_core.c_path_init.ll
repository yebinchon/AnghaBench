; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_path_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/extr_core.c_path_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_path = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device*, %struct.icc_node*, i32 }
%struct.device = type { i32 }
%struct.icc_node = type { %struct.icc_node*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@reqs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.icc_path* (%struct.device*, %struct.icc_node*, i32)* @path_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.icc_path* @path_init(%struct.device* %0, %struct.icc_node* %1, i32 %2) #0 {
  %4 = alloca %struct.icc_path*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.icc_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icc_node*, align 8
  %9 = alloca %struct.icc_path*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.icc_node* %1, %struct.icc_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.icc_node*, %struct.icc_node** %6, align 8
  store %struct.icc_node* %11, %struct.icc_node** %8, align 8
  %12 = load %struct.icc_path*, %struct.icc_path** %9, align 8
  %13 = load i32, i32* @reqs, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @struct_size(%struct.icc_path* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.icc_path* @kzalloc(i32 %15, i32 %16)
  store %struct.icc_path* %17, %struct.icc_path** %9, align 8
  %18 = load %struct.icc_path*, %struct.icc_path** %9, align 8
  %19 = icmp ne %struct.icc_path* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.icc_path* @ERR_PTR(i32 %22)
  store %struct.icc_path* %23, %struct.icc_path** %4, align 8
  br label %74

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.icc_path*, %struct.icc_path** %9, align 8
  %27 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %69, %24
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %30
  %34 = load %struct.icc_node*, %struct.icc_node** %8, align 8
  %35 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.icc_path*, %struct.icc_path** %9, align 8
  %41 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.icc_node*, %struct.icc_node** %8, align 8
  %48 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %47, i32 0, i32 1
  %49 = call i32 @hlist_add_head(i32* %46, i32* %48)
  %50 = load %struct.icc_node*, %struct.icc_node** %8, align 8
  %51 = load %struct.icc_path*, %struct.icc_path** %9, align 8
  %52 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store %struct.icc_node* %50, %struct.icc_node** %57, align 8
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load %struct.icc_path*, %struct.icc_path** %9, align 8
  %60 = getelementptr inbounds %struct.icc_path, %struct.icc_path* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store %struct.device* %58, %struct.device** %65, align 8
  %66 = load %struct.icc_node*, %struct.icc_node** %8, align 8
  %67 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %66, i32 0, i32 0
  %68 = load %struct.icc_node*, %struct.icc_node** %67, align 8
  store %struct.icc_node* %68, %struct.icc_node** %8, align 8
  br label %69

69:                                               ; preds = %33
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %10, align 4
  br label %30

72:                                               ; preds = %30
  %73 = load %struct.icc_path*, %struct.icc_path** %9, align 8
  store %struct.icc_path* %73, %struct.icc_path** %4, align 8
  br label %74

74:                                               ; preds = %72, %20
  %75 = load %struct.icc_path*, %struct.icc_path** %4, align 8
  ret %struct.icc_path* %75
}

declare dso_local %struct.icc_path* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.icc_path*, i32, i32) #1

declare dso_local %struct.icc_path* @ERR_PTR(i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
