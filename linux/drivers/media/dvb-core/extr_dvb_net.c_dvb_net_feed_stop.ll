; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_feed_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_feed_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dvb_net_priv = type { i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__*, i32**, i32* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*)*, i64 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_11__*)*, i64 }

@DVB_NET_FEEDTYPE_MPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"stop secfeed\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"release secfilter\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"release multi_filter[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: no feed to stop\0A\00", align 1
@DVB_NET_FEEDTYPE_ULE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"stop tsfeed\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: no ts feed to stop\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dvb_net_feed_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_feed_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dvb_net_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.dvb_net_priv* %7, %struct.dvb_net_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DVB_NET_FEEDTYPE_MPE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %129

16:                                               ; preds = %1
  %17 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %17, i32 0, i32 5
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %123

21:                                               ; preds = %16
  %22 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %22, i32 0, i32 5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %32 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %31, i32 0, i32 5
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %34, align 8
  %36 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %36, i32 0, i32 5
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = call i32 %35(%struct.TYPE_11__* %38)
  br label %40

40:                                               ; preds = %28, %21
  %41 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %48, i32 0, i32 5
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_11__*, i32*)** %51, align 8
  %53 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %53, i32 0, i32 5
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %56, i32 0, i32 7
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 %52(%struct.TYPE_11__* %55, i32* %58)
  %60 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %60, i32 0, i32 7
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %45, %40
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %105, %62
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %63
  %70 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %70, i32 0, i32 6
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %104

78:                                               ; preds = %69
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %82, i32 0, i32 5
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_11__*, i32*)** %85, align 8
  %87 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %88 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %87, i32 0, i32 5
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %91 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %90, i32 0, i32 6
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 %86(%struct.TYPE_11__* %89, i32* %96)
  %98 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %99 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %98, i32 0, i32 6
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %78, %69
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %63

108:                                              ; preds = %63
  %109 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %110 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %109, i32 0, i32 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32 (%struct.TYPE_9__*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_11__*)** %112, align 8
  %114 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %115 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %114, i32 0, i32 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %118 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %117, i32 0, i32 5
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = call i32 %113(%struct.TYPE_9__* %116, %struct.TYPE_11__* %119)
  %121 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %122 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %121, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %122, align 8
  br label %128

123:                                              ; preds = %16
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %123, %108
  br label %184

129:                                              ; preds = %1
  %130 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %131 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DVB_NET_FEEDTYPE_ULE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %180

135:                                              ; preds = %129
  %136 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %137 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %136, i32 0, i32 3
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = icmp ne %struct.TYPE_10__* %138, null
  br i1 %139, label %140, label %174

140:                                              ; preds = %135
  %141 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %142 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %141, i32 0, i32 3
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %140
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %150 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %151 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %150, i32 0, i32 3
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %153, align 8
  %155 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %156 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %155, i32 0, i32 3
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = call i32 %154(%struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %147, %140
  %160 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %161 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %160, i32 0, i32 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %163, align 8
  %165 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %166 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %165, i32 0, i32 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %169 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %168, i32 0, i32 3
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = call i32 %164(%struct.TYPE_9__* %167, %struct.TYPE_10__* %170)
  %172 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %173 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %172, i32 0, i32 3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %173, align 8
  br label %179

174:                                              ; preds = %135
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %174, %159
  br label %183

180:                                              ; preds = %129
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %180, %179
  br label %184

184:                                              ; preds = %183, %128
  %185 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %186 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %185, i32 0, i32 2
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local %struct.dvb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
