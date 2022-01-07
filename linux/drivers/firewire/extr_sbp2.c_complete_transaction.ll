; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_complete_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_complete_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.sbp2_orb = type { i32, i32, %struct.TYPE_4__*, i32 (%struct.sbp2_orb*, i32*)*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@free_orb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32, i8*, i64, i8*)* @complete_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_transaction(%struct.fw_card* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sbp2_orb*, align 8
  %12 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.sbp2_orb*
  store %struct.sbp2_orb* %14, %struct.sbp2_orb** %11, align 8
  %15 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %16 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %12, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %24 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %30 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %5
  %32 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %33 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @RCODE_COMPLETE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %39 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %38, i32 0, i32 4
  %40 = call i32 @list_del(i32* %39)
  %41 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %42 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %50 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %49, i32 0, i32 3
  %51 = load i32 (%struct.sbp2_orb*, i32*)*, i32 (%struct.sbp2_orb*, i32*)** %50, align 8
  %52 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %53 = call i32 %51(%struct.sbp2_orb* %52, i32* null)
  %54 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %55 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %54, i32 0, i32 1
  %56 = load i32, i32* @free_orb, align 4
  %57 = call i32 @kref_put(i32* %55, i32 %56)
  br label %67

58:                                               ; preds = %31
  %59 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %60 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %58, %37
  %68 = load %struct.sbp2_orb*, %struct.sbp2_orb** %11, align 8
  %69 = getelementptr inbounds %struct.sbp2_orb, %struct.sbp2_orb* %68, i32 0, i32 1
  %70 = load i32, i32* @free_orb, align 4
  %71 = call i32 @kref_put(i32* %69, i32 %70)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
