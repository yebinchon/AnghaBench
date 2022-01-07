; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_write_fifo_regio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_write_fifo_regio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i64 }

@A_FIFO_DATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*, i32*, i32)* @write_fifo_regio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_fifo_regio(%struct.hfc_multi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hfc_multi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hfc_multi* %0, %struct.hfc_multi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @A_FIFO_DATA0, align 4
  %8 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %9 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 4
  %12 = call i32 @outb(i32 %7, i64 %11)
  br label %13

13:                                               ; preds = %17, %3
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu_to_le32(i32 %19)
  %21 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %22 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @outl(i32 %20, i64 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  store i32* %26, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 4
  store i32 %28, i32* %6, align 4
  br label %13

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %39 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @outw(i32 %37, i64 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %6, align 4
  br label %30

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %54 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @outb(i32 %52, i64 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %47

61:                                               ; preds = %47
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
