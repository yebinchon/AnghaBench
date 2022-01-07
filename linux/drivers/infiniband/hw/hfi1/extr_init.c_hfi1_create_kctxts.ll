; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_create_kctxts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_create_kctxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_create_kctxts(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @kcalloc_node(i32 %8, i32 4, i32 %9, i32 %12)
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %15 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @hfi1_create_kctxt(%struct.hfi1_devdata* %31, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %44

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %24

43:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %77

44:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %45

45:                                               ; preds = %66, %44
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %47 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %53 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi i1 [ false, %45 ], [ %55, %50 ]
  br i1 %57, label %58, label %69

58:                                               ; preds = %56
  %59 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %60 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hfi1_free_ctxt(i32 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %45

69:                                               ; preds = %56
  %70 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %71 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %75 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %69, %43, %20
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @hfi1_create_kctxt(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @hfi1_free_ctxt(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
