; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_hfcmulti_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*, i32, i32)* @hfcmulti_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcmulti_conf(%struct.hfc_multi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfc_multi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfc_multi* %0, %struct.hfc_multi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 7
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %15 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %13, i32* %20, align 4
  br label %29

21:                                               ; preds = %9, %3
  %22 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %23 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %21, %12
  %30 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %33 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %41 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %49 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %57 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %65 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mode_hfcmulti(%struct.hfc_multi* %30, i32 %31, i32 %39, i32 %47, i32 %55, i32 %63, i32 %71)
  ret void
}

declare dso_local i32 @mode_hfcmulti(%struct.hfc_multi*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
