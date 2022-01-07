; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_init_i2c_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_dibx000_init_i2c_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dibx000_i2c_master = type { i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_9__, %struct.i2c_adapter*, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_adapter = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DIB7000P = common dso_local global i64 0, align 8
@DIB8000 = common dso_local global i64 0, align 8
@dibx000_i2c_gated_tuner_algo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"DiBX000 tuner I2C bus\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"could not initialize the tuner i2c_adapter\0A\00", align 1
@dibx000_i2c_master_gpio12_xfer_algo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO12 I2C bus\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"could not initialize the master i2c_adapter\0A\00", align 1
@dibx000_i2c_master_gpio34_xfer_algo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO34 I2C bus\00", align 1
@dibx000_i2c_gated_gpio67_algo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO67 I2C bus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibx000_init_i2c_master(%struct.dibx000_i2c_master* %0, i64 %1, %struct.i2c_adapter* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dibx000_i2c_master*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dibx000_i2c_master* %0, %struct.dibx000_i2c_master** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.i2c_adapter* %2, %struct.i2c_adapter** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %12 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %11, i32 0, i32 2
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %15 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %14, i32 0, i32 2
  %16 = call i64 @mutex_lock_interruptible(i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %164

22:                                               ; preds = %4
  %23 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %24 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %23, i32 0, i32 3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i32 @memset(%struct.TYPE_8__* %25, i32 0, i32 4)
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 1
  %29 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %30 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 8
  %34 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %35 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %34, i32 0, i32 3
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %40 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %43 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  store i32 %41, i32* %46, align 8
  %47 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %48 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 4, i32* %51, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %54 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %53, i32 0, i32 10
  store i64 %52, i64* %54, align 8
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %56 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %57 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %56, i32 0, i32 6
  store %struct.i2c_adapter* %55, %struct.i2c_adapter** %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 1
  %60 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %61 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @DIB7000P, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %22
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @DIB8000, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %22
  %70 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %71 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %70, i32 0, i32 1
  store i32 1024, i32* %71, align 4
  br label %75

72:                                               ; preds = %65
  %73 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %74 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %73, i32 0, i32 1
  store i32 768, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %77 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %76, i32 0, i32 6
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %77, align 8
  %79 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %83 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  %86 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %87 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %86, i32 0, i32 9
  %88 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %89 = call i64 @i2c_adapter_init(%struct.TYPE_9__* %87, i32* @dibx000_i2c_gated_tuner_algo, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.dibx000_i2c_master* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %75
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %75
  %94 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %95 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %94, i32 0, i32 6
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %95, align 8
  %97 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %101 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %105 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %104, i32 0, i32 8
  %106 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %107 = call i64 @i2c_adapter_init(%struct.TYPE_9__* %105, i32* @dibx000_i2c_master_gpio12_xfer_algo, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.dibx000_i2c_master* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %93
  %112 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %113 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %112, i32 0, i32 6
  %114 = load %struct.i2c_adapter*, %struct.i2c_adapter** %113, align 8
  %115 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %119 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 8
  %122 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %123 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %122, i32 0, i32 7
  %124 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %125 = call i64 @i2c_adapter_init(%struct.TYPE_9__* %123, i32* @dibx000_i2c_master_gpio34_xfer_algo, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.dibx000_i2c_master* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %111
  %130 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %131 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %130, i32 0, i32 6
  %132 = load %struct.i2c_adapter*, %struct.i2c_adapter** %131, align 8
  %133 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %137 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 4
  %140 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %141 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %140, i32 0, i32 5
  %142 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %143 = call i64 @i2c_adapter_init(%struct.TYPE_9__* %141, i32* @dibx000_i2c_gated_gpio67_algo, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %struct.dibx000_i2c_master* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %129
  %146 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %129
  %148 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %149 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %150 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %148, i32 %151, i32 0, i32 0)
  %153 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %154 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %155 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %154, i32 0, i32 3
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = call i32 @i2c_transfer(%struct.i2c_adapter* %153, %struct.TYPE_8__* %156, i32 1)
  %158 = icmp eq i32 %157, 1
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %10, align 4
  %160 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %6, align 8
  %161 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %160, i32 0, i32 2
  %162 = call i32 @mutex_unlock(i32* %161)
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %147, %18
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @i2c_adapter_init(%struct.TYPE_9__*, i32*, i8*, %struct.dibx000_i2c_master*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master*, i32, i32, i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
