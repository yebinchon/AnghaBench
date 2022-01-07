; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6423.c_isl6423_set_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6423.c_isl6423_set_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.isl6423_dev = type { i32, %struct.isl6423_config* }
%struct.isl6423_config = type { i32, i32 }

@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"I/O error <%d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @isl6423_set_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl6423_set_current(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.isl6423_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isl6423_config*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.isl6423_dev*
  store %struct.isl6423_dev* %11, %struct.isl6423_dev** %4, align 8
  %12 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %13 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %16 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %15, i32 0, i32 1
  %17 = load %struct.isl6423_config*, %struct.isl6423_config** %16, align 8
  store %struct.isl6423_config* %17, %struct.isl6423_config** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.isl6423_config*, %struct.isl6423_config** %6, align 8
  %19 = getelementptr inbounds %struct.isl6423_config, %struct.isl6423_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %37 [
    i32 133, label %21
    i32 132, label %24
    i32 131, label %29
    i32 130, label %34
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, -4
  store i32 %23, i32* %5, align 4
  br label %37

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, -3
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -2
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, 2
  store i32 %33, i32* %5, align 4
  br label %37

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, 3
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %1, %34, %29, %24, %21
  %38 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @isl6423_write(%struct.isl6423_dev* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %65

44:                                               ; preds = %37
  %45 = load %struct.isl6423_config*, %struct.isl6423_config** %6, align 8
  %46 = getelementptr inbounds %struct.isl6423_config, %struct.isl6423_config* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %54 [
    i32 128, label %48
    i32 129, label %51
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, -17
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, 16
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %44, %51, %48
  %55 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @isl6423_write(%struct.isl6423_dev* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %64 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %2, align 4
  br label %70

65:                                               ; preds = %60, %43
  %66 = load i32, i32* @FE_ERROR, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dprintk(i32 %66, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @isl6423_write(%struct.isl6423_dev*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
