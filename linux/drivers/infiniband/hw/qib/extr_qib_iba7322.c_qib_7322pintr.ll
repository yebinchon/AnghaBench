; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322pintr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322pintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i64, %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32* }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@kr_intclear = common dso_local global i32 0, align 4
@QIB_I_RCVAVAIL_LSB = common dso_local global i64 0, align 8
@QIB_I_RCVURG_LSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_7322pintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322pintr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qib_ctxtdata*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.qib_ctxtdata*
  store %struct.qib_ctxtdata* %10, %struct.qib_ctxtdata** %6, align 8
  %11 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %12 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %11, i32 0, i32 1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %12, align 8
  store %struct.qib_devdata* %13, %struct.qib_devdata** %7, align 8
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QIB_PRESENT, align 4
  %18 = load i32, i32* @QIB_BADINTR, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @QIB_PRESENT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @this_cpu_inc(i32 %29)
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %32 = load i32, i32* @kr_intclear, align 4
  %33 = load i64, i64* @QIB_I_RCVAVAIL_LSB, align 8
  %34 = shl i64 1, %33
  %35 = load i64, i64* @QIB_I_RCVURG_LSB, align 8
  %36 = shl i64 1, %35
  %37 = or i64 %34, %36
  %38 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %39 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = shl i64 %37, %40
  %42 = call i32 @qib_write_kreg(%struct.qib_devdata* %31, i32 %32, i64 %41)
  %43 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %6, align 8
  %44 = call i32 @qib_kreceive(%struct.qib_ctxtdata* %43, i32* null, i32* %8)
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %25, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @qib_kreceive(%struct.qib_ctxtdata*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
