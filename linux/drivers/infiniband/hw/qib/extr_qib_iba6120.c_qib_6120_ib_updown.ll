; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_ib_updown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_ib_updown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8*, i8*, i64, i32, i32 }

@QIBL_IB_FORCE_NOTIFY = common dso_local global i32 0, align 4
@cr_ibsymbolerr = common dso_local global i32 0, align 4
@cr_iblinkerrrecov = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, i32, i32)* @qib_6120_ib_updown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_6120_ib_updown(%struct.qib_pportdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %9 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @QIBL_IB_FORCE_NOTIFY, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %19 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %18, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %93

24:                                               ; preds = %3
  %25 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %26 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %90

33:                                               ; preds = %24
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %41 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* @cr_ibsymbolerr, align 4
  %44 = call i8* @read_6120_creg32(%struct.TYPE_4__* %42, i32 %43)
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %46 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %44 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %56 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %54
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %66 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* @cr_iblinkerrrecov, align 4
  %69 = call i8* @read_6120_creg32(%struct.TYPE_4__* %67, i32 %68)
  %70 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %71 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %69 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %81 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %79
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  br label %90

90:                                               ; preds = %33, %24
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %92 = call i32 @qib_hol_init(%struct.qib_pportdata* %91)
  br label %140

93:                                               ; preds = %3
  %94 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %95 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %101 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %137, label %108

108:                                              ; preds = %93
  %109 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %110 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %116 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* @cr_ibsymbolerr, align 4
  %119 = call i8* @read_6120_creg32(%struct.TYPE_4__* %117, i32 %118)
  %120 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %121 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i8* %119, i8** %125, align 8
  %126 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %127 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* @cr_iblinkerrrecov, align 4
  %130 = call i8* @read_6120_creg32(%struct.TYPE_4__* %128, i32 %129)
  %131 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %132 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  store i8* %130, i8** %136, align 8
  br label %137

137:                                              ; preds = %108, %93
  %138 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %139 = call i32 @qib_hol_down(%struct.qib_pportdata* %138)
  br label %140

140:                                              ; preds = %137, %90
  %141 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @qib_6120_setup_setextled(%struct.qib_pportdata* %141, i32 %142)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @read_6120_creg32(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @qib_hol_init(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_hol_down(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_6120_setup_setextled(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
