; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cm_upcall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cm_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { i64, i32, i64, %struct.TYPE_8__, i32, i32, %struct.iw_cm_id*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type opaque
%struct.TYPE_5__ = type { %struct.iw_cm_id* }
%struct.iw_cm_event.0 = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.siw_cep* }

@IW_CM_EVENT_CONNECT_REQUEST = common dso_local global i32 0, align 4
@IW_CM_EVENT_ESTABLISHED = common dso_local global i32 0, align 4
@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[QP %u]: reason=%d, status=%d\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_cep*, i32, i32)* @siw_cm_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_cm_upcall(%struct.siw_cep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.siw_cep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iw_cm_event.0, align 8
  %8 = alloca %struct.iw_cm_id*, align 8
  %9 = alloca i64, align 8
  store %struct.siw_cep* %0, %struct.siw_cep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @memset(%struct.iw_cm_event.0* %7, i32 0, i32 48)
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IW_CM_EVENT_CONNECT_REQUEST, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %20 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 8
  store %struct.siw_cep* %19, %struct.siw_cep** %20, align 8
  %21 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %22 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %21, i32 0, i32 7
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.iw_cm_id*, %struct.iw_cm_id** %24, align 8
  store %struct.iw_cm_id* %25, %struct.iw_cm_id** %8, align 8
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %28 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %27, i32 0, i32 6
  %29 = load %struct.iw_cm_id*, %struct.iw_cm_id** %28, align 8
  store %struct.iw_cm_id* %29, %struct.iw_cm_id** %8, align 8
  br label %30

30:                                               ; preds = %26, %18
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IW_CM_EVENT_ESTABLISHED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34, %30
  %39 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %40 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 7
  store i32 %41, i32* %42, align 4
  %43 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %44 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 6
  store i32 %45, i32* %46, align 8
  br label %61

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IW_CM_EVENT_CONNECT_REQUEST, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %53 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 7
  store i32 %54, i32* %55, align 4
  %56 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %57 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 6
  store i32 %58, i32* %59, align 8
  br label %60

60:                                               ; preds = %51, %47
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @IW_CM_EVENT_CONNECT_REQUEST, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %112

69:                                               ; preds = %65, %61
  %70 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %71 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @be16_to_cpu(i32 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %69
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 5
  store i64 %80, i64* %81, align 8
  %82 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %83 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %88 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %93, 4
  store i64 %94, i64* %92, align 8
  %95 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, 4
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 8
  br label %100

100:                                              ; preds = %91, %79
  br label %101

101:                                              ; preds = %100, %69
  %102 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %103 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 4
  %106 = call i32 @getname_local(i32 %104, i32* %105)
  %107 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %108 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 3
  %111 = call i32 @getname_peer(i32 %109, i32* %110)
  br label %112

112:                                              ; preds = %101, %65
  %113 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %114 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %115 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %120 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @qp_id(i64 %121)
  br label %125

123:                                              ; preds = %112
  %124 = load i32, i32* @UINT_MAX, align 4
  br label %125

125:                                              ; preds = %123, %118
  %126 = phi i32 [ %122, %118 ], [ %124, %123 ]
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @siw_dbg_cep(%struct.siw_cep* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127, i32 %128)
  %130 = load %struct.iw_cm_id*, %struct.iw_cm_id** %8, align 8
  %131 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %130, i32 0, i32 0
  %132 = load i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)*, i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)** %131, align 8
  %133 = load %struct.iw_cm_id*, %struct.iw_cm_id** %8, align 8
  %134 = bitcast %struct.iw_cm_event.0* %7 to %struct.iw_cm_event*
  %135 = call i32 %132(%struct.iw_cm_id* %133, %struct.iw_cm_event* %134)
  ret i32 %135
}

declare dso_local i32 @memset(%struct.iw_cm_event.0*, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @getname_local(i32, i32*) #1

declare dso_local i32 @getname_peer(i32, i32*) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*, i32, i32, i32) #1

declare dso_local i32 @qp_id(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
