; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_write_regm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_write_regm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd*, i32, i32, i32)* @write_regm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_regm(%struct.cxd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cxd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cxd* %0, %struct.cxd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.cxd*, %struct.cxd** %5, align 8
  %12 = getelementptr inbounds %struct.cxd, %struct.cxd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.cxd*, %struct.cxd** %5, align 8
  %18 = getelementptr inbounds %struct.cxd, %struct.cxd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @regmap_write(i32 %19, i32 0, i32 %20)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %16, %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 6
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 8
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 255
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.cxd*, %struct.cxd** %5, align 8
  %36 = getelementptr inbounds %struct.cxd, %struct.cxd* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @regmap_read(i32 %37, i32 1, i32* %10)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.cxd*, %struct.cxd** %5, align 8
  %41 = getelementptr inbounds %struct.cxd, %struct.cxd* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %34, %31, %28, %25, %22
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.cxd*, %struct.cxd** %5, align 8
  %49 = getelementptr inbounds %struct.cxd, %struct.cxd* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.cxd*, %struct.cxd** %5, align 8
  %51 = getelementptr inbounds %struct.cxd, %struct.cxd* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.cxd*, %struct.cxd** %5, align 8
  %63 = getelementptr inbounds %struct.cxd, %struct.cxd* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %46
  %71 = load %struct.cxd*, %struct.cxd** %5, align 8
  %72 = getelementptr inbounds %struct.cxd, %struct.cxd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cxd*, %struct.cxd** %5, align 8
  %75 = getelementptr inbounds %struct.cxd, %struct.cxd* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @regmap_write(i32 %73, i32 1, i32 %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %70, %46
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 32
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.cxd*, %struct.cxd** %5, align 8
  %87 = getelementptr inbounds %struct.cxd, %struct.cxd* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 127
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85, %82
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
