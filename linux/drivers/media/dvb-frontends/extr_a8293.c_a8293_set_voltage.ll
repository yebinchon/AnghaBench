; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_a8293.c_a8293_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_a8293.c_a8293_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.a8293_dev* }
%struct.a8293_dev = type { i8**, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"fe_sec_voltage=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @a8293_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a8293_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.a8293_dev*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.a8293_dev*, %struct.a8293_dev** %12, align 8
  store %struct.a8293_dev* %13, %struct.a8293_dev** %6, align 8
  %14 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %15 = getelementptr inbounds %struct.a8293_dev, %struct.a8293_dev* %14, i32 0, i32 1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %7, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %25 [
    i32 128, label %22
    i32 130, label %23
    i32 129, label %24
  ]

22:                                               ; preds = %2
  store i8* inttoptr (i64 16 to i8*), i8** %9, align 8
  br label %28

23:                                               ; preds = %2
  store i8* inttoptr (i64 49 to i8*), i8** %9, align 8
  br label %28

24:                                               ; preds = %2
  store i8* inttoptr (i64 56 to i8*), i8** %9, align 8
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %70

28:                                               ; preds = %24, %23, %22
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %31 = getelementptr inbounds %struct.a8293_dev, %struct.a8293_dev* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %29, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %38 = call i32 @i2c_master_send(%struct.i2c_client* %37, i8** %9, i32 1)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %70

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %45 = getelementptr inbounds %struct.a8293_dev, %struct.a8293_dev* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %43, i8** %47, align 8
  br label %48

48:                                               ; preds = %42, %28
  store i8* inttoptr (i64 130 to i8*), i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %51 = getelementptr inbounds %struct.a8293_dev, %struct.a8293_dev* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %49, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %58 = call i32 @i2c_master_send(%struct.i2c_client* %57, i8** %10, i32 1)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %70

62:                                               ; preds = %56
  %63 = load i8*, i8** %10, align 8
  %64 = load %struct.a8293_dev*, %struct.a8293_dev** %6, align 8
  %65 = getelementptr inbounds %struct.a8293_dev, %struct.a8293_dev* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %62, %48
  %69 = call i32 @usleep_range(i32 1500, i32 50000)
  store i32 0, i32* %3, align 4
  br label %76

70:                                               ; preds = %61, %41, %25
  %71 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %68
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8**, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
