; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_writepcibridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_writepcibridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*, i8, i8)* @writepcibridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writepcibridge(%struct.hfc_multi* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.hfc_multi*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.hfc_multi* %0, %struct.hfc_multi** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %10 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %46

14:                                               ; preds = %3
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i16 16384, i16* %7, align 2
  br label %20

19:                                               ; preds = %14
  store i16 22528, i16* %7, align 2
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i16, i16* %7, align 2
  %22 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %23 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 4
  %26 = call i32 @outw(i16 zeroext %21, i64 %25)
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %6, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 8
  %32 = or i32 %28, %31
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 16
  %36 = or i32 %32, %35
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 24
  %40 = or i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %43 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @outl(i32 %41, i64 %44)
  br label %46

46:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
