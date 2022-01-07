; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2820r_core.c_cxd2820r_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.cxd2820r_priv* }
%struct.dtv_frontend_properties = type { i32 }
%struct.cxd2820r_priv = type { i32, i32, %struct.i2c_client** }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"delivery_system=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"loop=%d\0A\00", align 1
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_SUCCESS = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_AGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@DVBFE_ALGO_SEARCH_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cxd2820r_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2820r_search(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.cxd2820r_priv*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %11, align 8
  store %struct.cxd2820r_priv* %12, %struct.cxd2820r_priv** %4, align 8
  %13 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %14 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %13, i32 0, i32 2
  %15 = load %struct.i2c_client**, %struct.i2c_client*** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %15, i64 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  store %struct.dtv_frontend_properties* %19, %struct.dtv_frontend_properties** %6, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %27 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %1
  %31 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %32 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 130
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %37 = call i32 @cxd2820r_sleep_t(%struct.dvb_frontend* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %112

41:                                               ; preds = %35
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 0
  store i32 129, i32* %43, align 4
  br label %59

44:                                               ; preds = %30
  %45 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %46 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 129
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %51 = call i32 @cxd2820r_sleep_t2(%struct.dvb_frontend* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %112

55:                                               ; preds = %49
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 0
  store i32 130, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %44
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %62 = call i32 @cxd2820r_set_frontend(%struct.dvb_frontend* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %112

66:                                               ; preds = %60
  %67 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %68 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %73 [
    i32 130, label %70
    i32 131, label %70
    i32 129, label %71
    i32 128, label %72
  ]

70:                                               ; preds = %66, %66
  store i32 20, i32* %8, align 4
  br label %74

71:                                               ; preds = %66
  store i32 40, i32* %8, align 4
  br label %74

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %66, %72
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %71, %70
  br label %75

75:                                               ; preds = %96, %74
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @dev_dbg(i32* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = call i32 @msleep(i32 50)
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %85 = call i32 @cxd2820r_read_status(%struct.dvb_frontend* %84, i32* %9)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %112

89:                                               ; preds = %78
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @FE_HAS_LOCK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %99

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %8, align 4
  br label %75

99:                                               ; preds = %94, %75
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @FE_HAS_LOCK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %106 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load i32, i32* @DVBFE_ALGO_SEARCH_SUCCESS, align 4
  store i32 %107, i32* %2, align 4
  br label %118

108:                                              ; preds = %99
  %109 = load %struct.cxd2820r_priv*, %struct.cxd2820r_priv** %4, align 8
  %110 = getelementptr inbounds %struct.cxd2820r_priv, %struct.cxd2820r_priv* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i32, i32* @DVBFE_ALGO_SEARCH_AGAIN, align 4
  store i32 %111, i32* %2, align 4
  br label %118

112:                                              ; preds = %88, %65, %54, %40
  %113 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @dev_dbg(i32* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @DVBFE_ALGO_SEARCH_ERROR, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %112, %108, %104
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @cxd2820r_sleep_t(%struct.dvb_frontend*) #1

declare dso_local i32 @cxd2820r_sleep_t2(%struct.dvb_frontend*) #1

declare dso_local i32 @cxd2820r_set_frontend(%struct.dvb_frontend*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cxd2820r_read_status(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
