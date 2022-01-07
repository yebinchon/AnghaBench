; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_write_fifo_pcimem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcmulti.c_write_fifo_pcimem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_multi = type { i64 }

@A_FIFO_DATA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_multi*, i32*, i32)* @write_fifo_pcimem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_fifo_pcimem(%struct.hfc_multi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hfc_multi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hfc_multi* %0, %struct.hfc_multi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i32, i32* %6, align 4
  %9 = ashr i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  %15 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %16 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @A_FIFO_DATA0, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32* %22, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 4
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %35 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @A_FIFO_DATA0, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writew(i32 %33, i64 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %6, align 4
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %48, %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hfc_multi*, %struct.hfc_multi** %4, align 8
  %52 = getelementptr inbounds %struct.hfc_multi, %struct.hfc_multi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @A_FIFO_DATA0, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writeb(i32 %50, i64 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %45

61:                                               ; preds = %45
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
