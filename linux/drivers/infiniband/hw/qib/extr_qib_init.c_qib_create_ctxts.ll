; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_ctxts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_ctxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, i32*, %struct.qib_pportdata*, i32, %struct.TYPE_2__* }
%struct.qib_pportdata = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qib_ctxtdata = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate ctxtdata for Kernel ctxt, failing\0A\00", align 1
@QIB_DEFAULT_P_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_create_ctxts(%struct.qib_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %9 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %8, i32 0, i32 7
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pcibus_to_node(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @numa_node_id()
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kcalloc(i32 %24, i32 4, i32 %25)
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 4
  store i32* %26, i32** %28, align 8
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %94

36:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %90, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %93

43:                                               ; preds = %37
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %90

52:                                               ; preds = %43
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 5
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %58 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = urem i32 %56, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %55, i64 %61
  store %struct.qib_pportdata* %62, %struct.qib_pportdata** %6, align 8
  %63 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %66 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.qib_ctxtdata* @qib_create_ctxtdata(%struct.qib_pportdata* %63, i32 %64, i32 %67)
  store %struct.qib_ctxtdata* %68, %struct.qib_ctxtdata** %7, align 8
  %69 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %70 = icmp ne %struct.qib_ctxtdata* %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %52
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %73 = call i32 @qib_dev_err(%struct.qib_devdata* %72, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @kfree(i32* %76)
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %94

82:                                               ; preds = %52
  %83 = load i32, i32* @QIB_DEFAULT_P_KEY, align 4
  %84 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %85 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  %88 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %7, align 8
  %89 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %82, %51
  %91 = load i32, i32* %4, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %37

93:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %71, %33
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @pcibus_to_node(i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.qib_ctxtdata* @qib_create_ctxtdata(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
