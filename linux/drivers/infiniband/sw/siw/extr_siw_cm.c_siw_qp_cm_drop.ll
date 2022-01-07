; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_qp_cm_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_qp_cm_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_7__, %struct.siw_cep*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.siw_cep = type { i64, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SIW_CM_WORK_CLOSE_LLP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"already closed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"immediate close, state %d\0A\00", align 1
@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_CM_EVENT_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_qp_cm_drop(%struct.siw_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.siw_cep*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %7 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %6, i32 0, i32 1
  %8 = load %struct.siw_cep*, %struct.siw_cep** %7, align 8
  store %struct.siw_cep* %8, %struct.siw_cep** %5, align 8
  %9 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %10 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %13 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %16 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %15, i32 0, i32 1
  %17 = load %struct.siw_cep*, %struct.siw_cep** %16, align 8
  %18 = icmp ne %struct.siw_cep* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %118

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %25 = load i32, i32* @SIW_CM_WORK_CLOSE_LLP, align 4
  %26 = call i32 @siw_cm_queue_work(%struct.siw_cep* %24, i32 %25)
  br label %118

27:                                               ; preds = %20
  %28 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %29 = call i32 @siw_cep_set_inuse(%struct.siw_cep* %28)
  %30 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %31 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 133
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %36 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %115

37:                                               ; preds = %27
  %38 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %39 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %40 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %44 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %50 = call i32 @siw_send_terminate(%struct.siw_qp* %49)
  br label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %53 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  %57 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %58 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  switch i64 %59, label %71 [
    i64 135, label %60
    i64 129, label %66
    i64 131, label %70
    i64 130, label %70
    i64 132, label %70
    i64 134, label %70
    i64 128, label %70
    i64 133, label %70
  ]

60:                                               ; preds = %56
  %61 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %62 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @siw_cm_upcall(%struct.siw_cep* %61, i32 %62, i32 %64)
  br label %72

66:                                               ; preds = %56
  %67 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %68 = load i32, i32* @IW_CM_EVENT_CLOSE, align 4
  %69 = call i32 @siw_cm_upcall(%struct.siw_cep* %67, i32 %68, i32 0)
  br label %72

70:                                               ; preds = %56, %56, %56, %56, %56, %56
  br label %71

71:                                               ; preds = %56, %70
  br label %72

72:                                               ; preds = %71, %66, %60
  %73 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %74 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %76, align 8
  %78 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %79 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 %77(%struct.TYPE_8__* %80)
  %82 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %83 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %82, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %83, align 8
  %84 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %85 = call i32 @siw_cep_put(%struct.siw_cep* %84)
  br label %86

86:                                               ; preds = %72, %51
  %87 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %88 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %87, i32 0, i32 0
  store i64 133, i64* %88, align 8
  %89 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %90 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %86
  %94 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %95 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @siw_socket_disassoc(i32* %96)
  %98 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %99 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @sock_release(i32* %100)
  %102 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %103 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %102, i32 0, i32 2
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %93, %86
  %105 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %106 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %111 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  %112 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %113 = call i32 @siw_qp_put(%struct.siw_qp* %112)
  br label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %34
  %116 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %117 = call i32 @siw_cep_set_free(%struct.siw_cep* %116)
  br label %118

118:                                              ; preds = %19, %115, %23
  ret void
}

declare dso_local i32 @siw_cm_queue_work(%struct.siw_cep*, i32) #1

declare dso_local i32 @siw_cep_set_inuse(%struct.siw_cep*) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*, ...) #1

declare dso_local i32 @siw_send_terminate(%struct.siw_qp*) #1

declare dso_local i32 @siw_cm_upcall(%struct.siw_cep*, i32, i32) #1

declare dso_local i32 @siw_cep_put(%struct.siw_cep*) #1

declare dso_local i32 @siw_socket_disassoc(i32*) #1

declare dso_local i32 @sock_release(i32*) #1

declare dso_local i32 @siw_qp_put(%struct.siw_qp*) #1

declare dso_local i32 @siw_cep_set_free(%struct.siw_cep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
