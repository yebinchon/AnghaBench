; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32, i64 }
%struct.i40iw_device = type { i32 }
%struct.i40iw_cm_node = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, %struct.iw_cm_id*, %struct.i40iw_cm_node* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_CM_BUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_reject(%struct.iw_cm_id* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iw_cm_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i40iw_device*, align 8
  %9 = alloca %struct.i40iw_cm_node*, align 8
  %10 = alloca %struct.i40iw_cm_node*, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %12 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.i40iw_cm_node*
  store %struct.i40iw_cm_node* %14, %struct.i40iw_cm_node** %9, align 8
  %15 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %9, align 8
  %16 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %15, i32 0, i32 4
  %17 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %16, align 8
  store %struct.i40iw_cm_node* %17, %struct.i40iw_cm_node** %10, align 8
  %18 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %19 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %9, align 8
  %20 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %19, i32 0, i32 3
  store %struct.iw_cm_id* %18, %struct.iw_cm_id** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %9, align 8
  %23 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %26 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.i40iw_device* @to_iwdev(i32 %27)
  store %struct.i40iw_device* %28, %struct.i40iw_device** %8, align 8
  %29 = load %struct.i40iw_device*, %struct.i40iw_device** %8, align 8
  %30 = icmp ne %struct.i40iw_device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %67

34:                                               ; preds = %3
  %35 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %9, align 8
  %36 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr i8, i8* %41, i64 4
  %43 = load i64, i64* @MAX_CM_BUFFER, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = icmp ugt i8* %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %67

49:                                               ; preds = %34
  %50 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %51 = icmp ne %struct.i40iw_cm_node* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %54 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %53, i32 0, i32 1
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @memcpy(i32* %54, i8* %55, i8* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %60 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  br label %62

62:                                               ; preds = %52, %49
  %63 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %9, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @i40iw_cm_reject(%struct.i40iw_cm_node* %63, i8* %64, i8* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %46, %31
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.i40iw_device* @to_iwdev(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i8*) #1

declare dso_local i32 @i40iw_cm_reject(%struct.i40iw_cm_node*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
