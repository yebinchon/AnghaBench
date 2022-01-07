; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_accept_newconn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_accept_newconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { i64, %struct.socket*, %struct.siw_cep*, i32, i32, i32, i32, i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.siw_cep* }

@SIW_EPSTATE_LISTENING = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"kernel_accept() error: %d\0A\00", align 1
@siw_tcp_nagle = common dso_local global i32 0, align 4
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"setsockopt NODELAY error: %d\0A\00", align 1
@SIW_EPSTATE_AWAIT_MPAREQ = common dso_local global i64 0, align 8
@SIW_CM_WORK_MPATIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"immediate mpa request\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_cep*)* @siw_accept_newconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_accept_newconn(%struct.siw_cep* %0) #0 {
  %2 = alloca %struct.siw_cep*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.siw_cep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.siw_cep* %0, %struct.siw_cep** %2, align 8
  %8 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %9 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %8, i32 0, i32 1
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %3, align 8
  store %struct.socket* null, %struct.socket** %4, align 8
  store %struct.siw_cep* null, %struct.siw_cep** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %12 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SIW_EPSTATE_LISTENING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %132

17:                                               ; preds = %1
  %18 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %19 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.siw_cep* @siw_cep_alloc(i32 %20)
  store %struct.siw_cep* %21, %struct.siw_cep** %5, align 8
  %22 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %23 = icmp ne %struct.siw_cep* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %132

25:                                               ; preds = %17
  %26 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %27 = call i64 @siw_cm_alloc_work(%struct.siw_cep* %26, i32 4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %132

30:                                               ; preds = %25
  %31 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %32 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %35 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %37 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %40 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %42 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %45 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %47 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %50 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.socket*, %struct.socket** %3, align 8
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = call i32 @kernel_accept(%struct.socket* %51, %struct.socket** %4, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %30
  %57 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %132

60:                                               ; preds = %30
  %61 = load %struct.socket*, %struct.socket** %4, align 8
  %62 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %63 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %62, i32 0, i32 1
  store %struct.socket* %61, %struct.socket** %63, align 8
  %64 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %65 = call i32 @siw_cep_get(%struct.siw_cep* %64)
  %66 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %67 = load %struct.socket*, %struct.socket** %4, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store %struct.siw_cep* %66, %struct.siw_cep** %70, align 8
  %71 = load i32, i32* @siw_tcp_nagle, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %60
  store i32 1, i32* %7, align 4
  %74 = load %struct.socket*, %struct.socket** %4, align 8
  %75 = load i32, i32* @SOL_TCP, align 4
  %76 = load i32, i32* @TCP_NODELAY, align 4
  %77 = bitcast i32* %7 to i8*
  %78 = call i32 @kernel_setsockopt(%struct.socket* %74, i32 %75, i32 %76, i8* %77, i32 4)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %132

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i64, i64* @SIW_EPSTATE_AWAIT_MPAREQ, align 8
  %88 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %89 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %91 = load i32, i32* @SIW_CM_WORK_MPATIMEOUT, align 4
  %92 = call i32 @siw_cm_queue_work(%struct.siw_cep* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %132

96:                                               ; preds = %86
  %97 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %98 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %99 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %98, i32 0, i32 2
  store %struct.siw_cep* %97, %struct.siw_cep** %99, align 8
  %100 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %101 = call i32 @siw_cep_get(%struct.siw_cep* %100)
  %102 = load %struct.socket*, %struct.socket** %4, align 8
  %103 = getelementptr inbounds %struct.socket, %struct.socket* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i64 @atomic_read(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %96
  %109 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %110 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %112 = call i32 @siw_cep_set_inuse(%struct.siw_cep* %111)
  %113 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %114 = call i32 @siw_proc_mpareq(%struct.siw_cep* %113)
  store i32 %114, i32* %6, align 4
  %115 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %116 = call i32 @siw_cep_set_free(%struct.siw_cep* %115)
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %108
  %122 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %123 = call i32 @siw_cep_put(%struct.siw_cep* %122)
  %124 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %125 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %124, i32 0, i32 2
  store %struct.siw_cep* null, %struct.siw_cep** %125, align 8
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %132

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %108
  br label %131

131:                                              ; preds = %130, %96
  br label %152

132:                                              ; preds = %128, %95, %81, %56, %29, %24, %16
  %133 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %134 = icmp ne %struct.siw_cep* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %137 = call i32 @siw_cep_put(%struct.siw_cep* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.socket*, %struct.socket** %4, align 8
  %140 = icmp ne %struct.socket* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.socket*, %struct.socket** %4, align 8
  %143 = call i32 @siw_socket_disassoc(%struct.socket* %142)
  %144 = load %struct.socket*, %struct.socket** %4, align 8
  %145 = call i32 @sock_release(%struct.socket* %144)
  %146 = load %struct.siw_cep*, %struct.siw_cep** %5, align 8
  %147 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %146, i32 0, i32 1
  store %struct.socket* null, %struct.socket** %147, align 8
  br label %148

148:                                              ; preds = %141, %138
  %149 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %131
  ret void
}

declare dso_local %struct.siw_cep* @siw_cep_alloc(i32) #1

declare dso_local i64 @siw_cm_alloc_work(%struct.siw_cep*, i32) #1

declare dso_local i32 @kernel_accept(%struct.socket*, %struct.socket**, i32) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*, ...) #1

declare dso_local i32 @siw_cep_get(%struct.siw_cep*) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @siw_cm_queue_work(%struct.siw_cep*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @siw_cep_set_inuse(%struct.siw_cep*) #1

declare dso_local i32 @siw_proc_mpareq(%struct.siw_cep*) #1

declare dso_local i32 @siw_cep_set_free(%struct.siw_cep*) #1

declare dso_local i32 @siw_cep_put(%struct.siw_cep*) #1

declare dso_local i32 @siw_socket_disassoc(%struct.socket*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
