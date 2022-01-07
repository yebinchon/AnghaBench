; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_ctxtdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_create_ctxtdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32, i32, i64, i32, i32, i32, i32, i32, i8*, %struct.qib_devdata*, %struct.qib_pportdata*, i32 }
%struct.qib_devdata = type { i64, i32, i32 (%struct.qib_ctxtdata.0*)*, %struct.qib_ctxtdata** }
%struct.qib_ctxtdata.0 = type opaque
%struct.qib_pportdata = type { %struct.qib_devdata* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_ctxtdata* @qib_create_ctxtdata(%struct.qib_pportdata* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 0
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i8* @kzalloc_node(i32 72, i32 %12, i32 %13)
  %15 = bitcast i8* %14 to %struct.qib_ctxtdata*
  store %struct.qib_ctxtdata* %15, %struct.qib_ctxtdata** %8, align 8
  %16 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %17 = icmp ne %struct.qib_ctxtdata* %16, null
  br i1 %17, label %18, label %79

18:                                               ; preds = %3
  %19 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %20 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %19, i32 0, i32 11
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %24 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %26 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %27 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %26, i32 0, i32 10
  store %struct.qib_pportdata* %25, %struct.qib_pportdata** %27, align 8
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %29 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %30 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %29, i32 0, i32 9
  store %struct.qib_devdata* %28, %struct.qib_devdata** %30, align 8
  %31 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %32 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %35 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 3
  %39 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %39, i64 %40
  store %struct.qib_ctxtdata* %36, %struct.qib_ctxtdata** %41, align 8
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 2
  %44 = load i32 (%struct.qib_ctxtdata.0*)*, i32 (%struct.qib_ctxtdata.0*)** %43, align 8
  %45 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %46 = bitcast %struct.qib_ctxtdata* %45 to %struct.qib_ctxtdata.0*
  %47 = call i32 %44(%struct.qib_ctxtdata.0* %46)
  %48 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %49 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %48, i32 0, i32 3
  store i32 32768, i32* %49, align 8
  %50 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %51 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sdiv i32 %52, %55
  %57 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %58 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %60 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %63 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %68 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %66, %69
  %71 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %72 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %74 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ilog2(i32 %75)
  %77 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %78 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %18, %3
  %80 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  ret %struct.qib_ctxtdata* %80
}

declare dso_local i8* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
