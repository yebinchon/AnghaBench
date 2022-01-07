; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, i64, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)*, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"setting pid: %5d %04x at index %d '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@index_reg_310 = common dso_local global i32 0, align 4
@pid_n_reg_314 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexcop_device*, i32, i32, i32)* @flexcop_pid_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_pid_control(%struct.flexcop_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.flexcop_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca { i64, i32 }, align 8
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca { i64, i32 }, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 8192
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %138

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @deb_ts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23, i8* %27)
  %29 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %30 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 6
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %68 [
    i32 0, label %38
    i32 1, label %43
    i32 2, label %48
    i32 3, label %53
    i32 4, label %58
    i32 5, label %63
  ]

38:                                               ; preds = %36
  %39 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @flexcop_pid_Stream1_PID_ctrl(%struct.flexcop_device* %39, i32 %40, i32 %41)
  br label %138

43:                                               ; preds = %36
  %44 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @flexcop_pid_Stream2_PID_ctrl(%struct.flexcop_device* %44, i32 %45, i32 %46)
  br label %138

48:                                               ; preds = %36
  %49 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @flexcop_pid_PCR_PID_ctrl(%struct.flexcop_device* %49, i32 %50, i32 %51)
  br label %138

53:                                               ; preds = %36
  %54 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @flexcop_pid_PMT_PID_ctrl(%struct.flexcop_device* %54, i32 %55, i32 %56)
  br label %138

58:                                               ; preds = %36
  %59 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @flexcop_pid_EMM_PID_ctrl(%struct.flexcop_device* %59, i32 %60, i32 %61)
  br label %138

63:                                               ; preds = %36
  %64 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @flexcop_pid_ECM_PID_ctrl(%struct.flexcop_device* %64, i32 %65, i32 %66)
  br label %138

68:                                               ; preds = %36
  %69 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %70 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %137

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 38
  br i1 %75, label %76, label %137

76:                                               ; preds = %73
  %77 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %78 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %77, i32 0, i32 1
  %79 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %78, align 8
  %80 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %81 = load i32, i32* @index_reg_310, align 4
  %82 = call { i64, i32 } %79(%struct.flexcop_device* %80, i32 %81)
  store { i64, i32 } %82, { i64, i32 }* %12, align 8
  %83 = bitcast { i64, i32 }* %12 to i8*
  %84 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 8 %83, i64 12, i1 false)
  %85 = bitcast %struct.TYPE_10__* %10 to i8*
  %86 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 12, i1 false)
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 6
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %92 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %91, i32 0, i32 0
  %93 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %92, align 8
  %94 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %95 = load i32, i32* @index_reg_310, align 4
  %96 = bitcast { i64, i32 }* %13 to i8*
  %97 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 12, i1 false)
  %98 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %99 = load i64, i64* %98, align 4
  %100 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %93(%struct.flexcop_device* %94, i32 %95, i64 %99, i32 %101)
  %103 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %104 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %103, i32 0, i32 1
  %105 = load { i64, i32 } (%struct.flexcop_device*, i32)*, { i64, i32 } (%struct.flexcop_device*, i32)** %104, align 8
  %106 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %107 = load i32, i32* @pid_n_reg_314, align 4
  %108 = call { i64, i32 } %105(%struct.flexcop_device* %106, i32 %107)
  store { i64, i32 } %108, { i64, i32 }* %15, align 8
  %109 = bitcast { i64, i32 }* %15 to i8*
  %110 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 8 %109, i64 12, i1 false)
  %111 = bitcast %struct.TYPE_10__* %9 to i8*
  %112 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 12, i1 false)
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %76
  %116 = load i32, i32* %7, align 4
  br label %118

117:                                              ; preds = %76
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i32 [ %116, %115 ], [ 8191, %117 ]
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %8, align 4
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %126 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %125, i32 0, i32 0
  %127 = load i32 (%struct.flexcop_device*, i32, i64, i32)*, i32 (%struct.flexcop_device*, i32, i64, i32)** %126, align 8
  %128 = load %struct.flexcop_device*, %struct.flexcop_device** %5, align 8
  %129 = load i32, i32* @pid_n_reg_314, align 4
  %130 = bitcast { i64, i32 }* %16 to i8*
  %131 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 12, i1 false)
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %133 = load i64, i64* %132, align 4
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 %127(%struct.flexcop_device* %128, i32 %129, i64 %133, i32 %135)
  br label %137

137:                                              ; preds = %118, %73, %68
  br label %138

138:                                              ; preds = %19, %137, %63, %58, %53, %48, %43, %38
  ret void
}

declare dso_local i32 @deb_ts(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @flexcop_pid_Stream1_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_Stream2_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_PCR_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_PMT_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_EMM_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_ECM_PID_ctrl(%struct.flexcop_device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
