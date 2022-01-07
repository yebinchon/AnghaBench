; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_rings_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_rings_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*, i32, i32)* @pdc_rings_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_rings_full(%struct.pdc_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pdc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pdc_state* %0, %struct.pdc_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %11 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %14 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %17 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %20 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NRXDACTIVE(i32 %15, i32 %18, i32 %21)
  %23 = sub nsw i32 %12, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %32 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %3
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %35
  %43 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %44 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %47 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %50 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %53 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @NTXDACTIVE(i32 %48, i32 %51, i32 %54)
  %56 = sub nsw i32 %45, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %42
  %64 = load %struct.pdc_state*, %struct.pdc_state** %4, align 8
  %65 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %63, %42
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @NRXDACTIVE(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @NTXDACTIVE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
