; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6405.c_isl6405_enable_high_lnb_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6405.c_isl6405_enable_high_lnb_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.isl6405 = type { i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@ISL6405_LLC2 = common dso_local global i32 0, align 4
@ISL6405_LLC1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @isl6405_enable_high_lnb_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl6405_enable_high_lnb_voltage(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.isl6405*, align 8
  %6 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.isl6405*
  store %struct.isl6405* %10, %struct.isl6405** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  %12 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %13 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %12, i32 0, i32 0
  store i32* %13, i32** %11, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  store i32 4, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  %17 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %18 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 8
  %20 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %21 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @ISL6405_LLC2, align 4
  %30 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %31 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %41

34:                                               ; preds = %25
  %35 = load i32, i32* @ISL6405_LLC2, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %38 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %28
  br label %59

42:                                               ; preds = %2
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @ISL6405_LLC1, align 4
  %47 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %48 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %58

51:                                               ; preds = %42
  %52 = load i32, i32* @ISL6405_LLC1, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %55 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %45
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %61 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %64 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %68 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %71 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.isl6405*, %struct.isl6405** %5, align 8
  %75 = getelementptr inbounds %struct.isl6405, %struct.isl6405* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @i2c_transfer(i32 %76, %struct.i2c_msg* %6, i32 1)
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %83

80:                                               ; preds = %59
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi i32 [ 0, %79 ], [ %82, %80 ]
  ret i32 %84
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
