; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_write_event_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_write_event_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp2ap020a00f_data = type { i32*, i32, i32 }

@GP2AP020A00F_FLAG_LUX_MODE_HI = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_PL = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_PH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2ap020a00f_data*, i32, i32)* @gp2ap020a00f_write_event_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gp2ap020a00f_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gp2ap020a00f_data* %0, %struct.gp2ap020a00f_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %56

12:                                               ; preds = %3
  %13 = load i32, i32* @GP2AP020A00F_FLAG_LUX_MODE_HI, align 4
  %14 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %15 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GP2AP020A00F_THRESH_PL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GP2AP020A00F_THRESH_PH, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %28 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 16
  store i32 %34, i32* %8, align 4
  br label %55

35:                                               ; preds = %22, %18, %12
  %36 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %37 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 16000
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %53

45:                                               ; preds = %35
  %46 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %47 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %45, %44
  %54 = phi i32 [ 16000, %44 ], [ %52, %45 ]
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %26
  br label %56

56:                                               ; preds = %55, %11
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @cpu_to_le16(i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %60 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @GP2AP020A00F_THRESH_REG(i32 %62)
  %64 = bitcast i64* %7 to i32*
  %65 = call i32 @regmap_bulk_write(i32 %61, i32 %63, i32* %64, i32 2)
  ret i32 %65
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @GP2AP020A00F_THRESH_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
