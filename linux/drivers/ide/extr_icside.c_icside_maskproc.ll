; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_icside.c_icside_maskproc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_icside.c_icside_maskproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.expansion_card = type { i32 }
%struct.icside_state = type { i32, i64, i64 }

@ICS_ARCIN_V6_INTROFFSET_1 = common dso_local global i64 0, align 8
@ICS_ARCIN_V6_INTROFFSET_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @icside_maskproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icside_maskproc(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.expansion_card*, align 8
  %7 = alloca %struct.icside_state*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.expansion_card* @ECARD_DEV(i32 %14)
  store %struct.expansion_card* %15, %struct.expansion_card** %6, align 8
  %16 = load %struct.expansion_card*, %struct.expansion_card** %6, align 8
  %17 = call %struct.icside_state* @ecard_get_drvdata(%struct.expansion_card* %16)
  store %struct.icside_state* %17, %struct.icside_state** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  %24 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  %26 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %62 [
    i32 0, label %36
    i32 1, label %49
  ]

36:                                               ; preds = %32
  %37 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  %38 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ICS_ARCIN_V6_INTROFFSET_1, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writeb(i32 0, i64 %41)
  %43 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  %44 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ICS_ARCIN_V6_INTROFFSET_2, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readb(i64 %47)
  br label %62

49:                                               ; preds = %32
  %50 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  %51 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ICS_ARCIN_V6_INTROFFSET_2, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writeb(i32 0, i64 %54)
  %56 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  %57 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ICS_ARCIN_V6_INTROFFSET_1, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readb(i64 %60)
  br label %62

62:                                               ; preds = %32, %49, %36
  br label %76

63:                                               ; preds = %29, %2
  %64 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  %65 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ICS_ARCIN_V6_INTROFFSET_2, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readb(i64 %68)
  %70 = load %struct.icside_state*, %struct.icside_state** %7, align 8
  %71 = getelementptr inbounds %struct.icside_state, %struct.icside_state* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ICS_ARCIN_V6_INTROFFSET_1, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readb(i64 %74)
  br label %76

76:                                               ; preds = %63, %62
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @local_irq_restore(i64 %77)
  ret void
}

declare dso_local %struct.expansion_card* @ECARD_DEV(i32) #1

declare dso_local %struct.icside_state* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
