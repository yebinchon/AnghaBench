; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_setup_compound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_setup_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i64, i64, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.stv090x_dev = type { %struct.TYPE_14__* }

@STV090x_DUAL = common dso_local global i64 0, align 8
@FE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Found Internal Structure!\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Create New Internal Structure!\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Error setting up device\00", align 1
@FE_CAN_MULTISTREAM = common dso_local global i32 0, align 4
@SEC_MINI_A = common dso_local global i32 0, align 4
@stv090x_set_gpio = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Probing %s demodulator(%d) Cut=0x%02x\00", align 1
@STV0900 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"STV0900\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"STV0903\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_setup_compound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_setup_compound(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca %struct.stv090x_dev*, align 8
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %5 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %6 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %9 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %8, i32 0, i32 3
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.stv090x_dev* @find_dev(i32 %7, i32 %12)
  store %struct.stv090x_dev* %13, %struct.stv090x_dev** %4, align 8
  %14 = load %struct.stv090x_dev*, %struct.stv090x_dev** %4, align 8
  %15 = icmp ne %struct.stv090x_dev* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %18 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STV090x_DUAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.stv090x_dev*, %struct.stv090x_dev** %4, align 8
  %24 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %27 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %26, i32 0, i32 2
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %27, align 8
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %29 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %28, i32 0, i32 2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @FE_INFO, align 4
  %35 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %34, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %107

36:                                               ; preds = %16, %1
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.TYPE_14__* @kmalloc(i32 32, i32 %37)
  %39 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %40 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %39, i32 0, i32 2
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %40, align 8
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %42 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %41, i32 0, i32 2
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %160

46:                                               ; preds = %36
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %48 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %47, i32 0, i32 2
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = call %struct.stv090x_dev* @append_internal(%struct.TYPE_14__* %49)
  store %struct.stv090x_dev* %50, %struct.stv090x_dev** %4, align 8
  %51 = load %struct.stv090x_dev*, %struct.stv090x_dev** %4, align 8
  %52 = icmp ne %struct.stv090x_dev* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %55 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %54, i32 0, i32 2
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = call i32 @kfree(%struct.TYPE_14__* %56)
  br label %160

58:                                               ; preds = %46
  %59 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %60 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %59, i32 0, i32 2
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %64 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %63, i32 0, i32 2
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %68 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %67, i32 0, i32 2
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %72 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %75 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %74, i32 0, i32 2
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 5
  store i32 %73, i32* %77, align 4
  %78 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %79 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %78, i32 0, i32 3
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %84 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  store i32 %82, i32* %86, align 8
  %87 = load i32, i32* @FE_INFO, align 4
  %88 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %87, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %90 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %89, i32 0, i32 2
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = call i32 @mutex_init(i32* %92)
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %95 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %94, i32 0, i32 2
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = call i32 @mutex_init(i32* %97)
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %100 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %99, i32 0, i32 4
  %101 = call i64 @stv090x_setup(%struct.TYPE_13__* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %58
  %104 = load i32, i32* @FE_ERROR, align 4
  %105 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %104, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %163

106:                                              ; preds = %58
  br label %107

107:                                              ; preds = %106, %22
  %108 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %109 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %108, i32 0, i32 2
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %112, 48
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load i32, i32* @FE_CAN_MULTISTREAM, align 4
  %116 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %117 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %115
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %114, %107
  %124 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %125 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %124, i32 0, i32 3
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %132 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %131, i32 0, i32 4
  %133 = load i32, i32* @SEC_MINI_A, align 4
  %134 = call i32 @stv090x_send_diseqc_burst(%struct.TYPE_13__* %132, i32 %133)
  br label %135

135:                                              ; preds = %130, %123
  %136 = load i32, i32* @stv090x_set_gpio, align 4
  %137 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %138 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %137, i32 0, i32 3
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store i32 %136, i32* %140, align 4
  %141 = load i32, i32* @FE_ERROR, align 4
  %142 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %143 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @STV0900, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %149 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %150 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %149, i32 0, i32 3
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %155 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %141, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %148, i32 %153, i32 %158)
  store i32 0, i32* %2, align 4
  br label %174

160:                                              ; preds = %53, %45
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %174

163:                                              ; preds = %103
  %164 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %165 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %164, i32 0, i32 2
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = call i32 @remove_dev(%struct.TYPE_14__* %166)
  %168 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %169 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %168, i32 0, i32 2
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = call i32 @kfree(%struct.TYPE_14__* %170)
  %172 = load i32, i32* @ENODEV, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %163, %160, %135
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.stv090x_dev* @find_dev(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @kmalloc(i32, i32) #1

declare dso_local %struct.stv090x_dev* @append_internal(%struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @stv090x_setup(%struct.TYPE_13__*) #1

declare dso_local i32 @stv090x_send_diseqc_burst(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @remove_dev(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
