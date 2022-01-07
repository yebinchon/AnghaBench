; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t.c_cxd2820r_init_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_t.c_cxd2820r_init_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2820r_priv* }
%struct.cxd2820r_priv = type { i32*, %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2820r_init_t(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cxd2820r_priv*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %8, align 8
  store %struct.cxd2820r_priv* %9, %struct.cxd2820r_priv** %4, align 8
  %10 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %11 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %10, i32 0, i32 1
  %12 = load %struct.i2c_client**, %struct.i2c_client*** %11, align 8
  %13 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %12, i64 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %5, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %19 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_write(i32 %22, i32 133, i32 7)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
