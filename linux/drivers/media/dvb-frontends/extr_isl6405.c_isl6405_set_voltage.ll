; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6405.c_isl6405_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6405.c_isl6405_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.isl6405 = type { i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@ISL6405_VSEL2 = common dso_local global i32 0, align 4
@ISL6405_EN2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISL6405_VSEL1 = common dso_local global i32 0, align 4
@ISL6405_EN1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @isl6405_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl6405_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isl6405*, align 8
  %7 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.isl6405*
  store %struct.isl6405* %11, %struct.isl6405** %6, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %13 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %14 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %13, i32 0, i32 0
  store i32* %14, i32** %12, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32 4, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %18 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %19 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 8
  %21 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %22 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %2
  %27 = load i32, i32* @ISL6405_VSEL2, align 4
  %28 = load i32, i32* @ISL6405_EN2, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %32 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %51 [
    i32 128, label %36
    i32 130, label %37
    i32 129, label %43
  ]

36:                                               ; preds = %26
  br label %54

37:                                               ; preds = %26
  %38 = load i32, i32* @ISL6405_EN2, align 4
  %39 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %40 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %54

43:                                               ; preds = %26
  %44 = load i32, i32* @ISL6405_EN2, align 4
  %45 = load i32, i32* @ISL6405_VSEL2, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %48 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %54

51:                                               ; preds = %26
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %110

54:                                               ; preds = %43, %37, %36
  br label %84

55:                                               ; preds = %2
  %56 = load i32, i32* @ISL6405_VSEL1, align 4
  %57 = load i32, i32* @ISL6405_EN1, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %61 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %5, align 4
  switch i32 %64, label %80 [
    i32 128, label %65
    i32 130, label %66
    i32 129, label %72
  ]

65:                                               ; preds = %55
  br label %83

66:                                               ; preds = %55
  %67 = load i32, i32* @ISL6405_EN1, align 4
  %68 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %69 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %83

72:                                               ; preds = %55
  %73 = load i32, i32* @ISL6405_EN1, align 4
  %74 = load i32, i32* @ISL6405_VSEL1, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %77 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %83

80:                                               ; preds = %55
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %110

83:                                               ; preds = %72, %66, %65
  br label %84

84:                                               ; preds = %83, %54
  %85 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %86 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %89 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %93 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %96 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.isl6405*, %struct.isl6405** %6, align 8
  %100 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @i2c_transfer(i32 %101, %struct.i2c_msg* %7, i32 1)
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %84
  br label %108

105:                                              ; preds = %84
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  br label %108

108:                                              ; preds = %105, %104
  %109 = phi i32 [ 0, %104 ], [ %107, %105 ]
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %80, %51
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
