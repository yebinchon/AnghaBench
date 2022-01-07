; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_direct_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_direct_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dax_direct_access(%struct.dax_device* %0, i32 %1, i64 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.dax_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.dax_device* %0, %struct.dax_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %14 = icmp ne %struct.dax_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i64, i64* @EOPNOTSUPP, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %6, align 8
  br label %52

18:                                               ; preds = %5
  %19 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %20 = call i32 @dax_alive(%struct.dax_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @ENXIO, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %6, align 8
  br label %52

25:                                               ; preds = %18
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %6, align 8
  br label %52

30:                                               ; preds = %25
  %31 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %32 = getelementptr inbounds %struct.dax_device, %struct.dax_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i64 (%struct.dax_device*, i32, i64, i8**, i32*)**
  %36 = load i64 (%struct.dax_device*, i32, i64, i8**, i32*)*, i64 (%struct.dax_device*, i32, i64, i8**, i32*)** %35, align 8
  %37 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i8**, i8*** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i64 %36(%struct.dax_device* %37, i32 %38, i64 %39, i8** %40, i32* %41)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %30
  %46 = load i64, i64* @ERANGE, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %6, align 8
  br label %52

48:                                               ; preds = %30
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @min(i64 %49, i64 %50)
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %48, %45, %28, %22, %15
  %53 = load i64, i64* %6, align 8
  ret i64 %53
}

declare dso_local i32 @dax_alive(%struct.dax_device*) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
