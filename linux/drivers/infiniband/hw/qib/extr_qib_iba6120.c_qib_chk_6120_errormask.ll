; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_chk_6120_errormask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_chk_6120_errormask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@qib_chk_6120_errormask.fixed = internal global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@kr_errmask = common dso_local global i32 0, align 4
@kr_hwerrstatus = common dso_local global i32 0, align 4
@kr_control = common dso_local global i32 0, align 4
@QLOGIC_IB_C_FREEZEMODE = common dso_local global i32 0, align 4
@kr_hwerrclear = common dso_local global i32 0, align 4
@kr_errclear = common dso_local global i32 0, align 4
@kr_intclear = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"errormask fixed(%u) %lx->%lx, ctrl %x hwerr %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_chk_6120_errormask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_chk_6120_errormask(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QIB_INITTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  br label %85

20:                                               ; preds = %12
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = load i32, i32* @kr_errmask, align 4
  %23 = call i64 @qib_read_kreg64(%struct.qib_devdata* %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %85

32:                                               ; preds = %20
  %33 = load i32, i32* @qib_chk_6120_errormask.fixed, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @qib_chk_6120_errormask.fixed, align 4
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %36 = load i32, i32* @kr_hwerrstatus, align 4
  %37 = call i64 @qib_read_kreg64(%struct.qib_devdata* %35, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %39 = load i32, i32* @kr_control, align 4
  %40 = call i32 @qib_read_kreg32(%struct.qib_devdata* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %42 = load i32, i32* @kr_errmask, align 4
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @qib_write_kreg(%struct.qib_devdata* %41, i32 %42, i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %49, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %32
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @QLOGIC_IB_C_FREEZEMODE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %57, %32
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %64 = load i32, i32* @kr_hwerrclear, align 4
  %65 = call i32 @qib_write_kreg(%struct.qib_devdata* %63, i32 %64, i64 0)
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %67 = load i32, i32* @kr_errclear, align 4
  %68 = call i32 @qib_write_kreg(%struct.qib_devdata* %66, i32 %67, i64 0)
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %70 = load i32, i32* @kr_intclear, align 4
  %71 = call i32 @qib_write_kreg(%struct.qib_devdata* %69, i32 %70, i64 0)
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %73 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @qib_chk_6120_errormask.fixed, align 4
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %78 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @qib_devinfo(i32 %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %76, i64 %81, i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %19, %31, %62, %57
  ret void
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
