; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_modify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.siw_qp_attrs = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"state: %s => %s\0A\00", align 1
@siw_qp_state_to_string = common dso_local global i32* null, align 8
@SIW_QP_ATTR_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_qp_modify(%struct.siw_qp* %0, %struct.siw_qp_attrs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siw_qp*, align 8
  %6 = alloca %struct.siw_qp_attrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %5, align 8
  store %struct.siw_qp_attrs* %1, %struct.siw_qp_attrs** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %74

13:                                               ; preds = %3
  %14 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %15 = load i32*, i32** @siw_qp_state_to_string, align 8
  %16 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %17 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @siw_qp_state_to_string, align 8
  %23 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %6, align 8
  %24 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @siw_dbg_qp(%struct.siw_qp* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SIW_QP_ATTR_STATE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %13
  %33 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %34 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @siw_qp_modify_nonstate(%struct.siw_qp* %33, %struct.siw_qp_attrs* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %13
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SIW_QP_ATTR_STATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %74

43:                                               ; preds = %37
  %44 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %45 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  switch i64 %47, label %65 [
    i64 131, label %48
    i64 130, label %48
    i64 129, label %53
    i64 128, label %57
    i64 132, label %61
  ]

48:                                               ; preds = %43, %43
  %49 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %50 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @siw_qp_nextstate_from_idle(%struct.siw_qp* %49, %struct.siw_qp_attrs* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %55 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %6, align 8
  %56 = call i32 @siw_qp_nextstate_from_rts(%struct.siw_qp* %54, %struct.siw_qp_attrs* %55)
  store i32 %56, i32* %8, align 4
  br label %66

57:                                               ; preds = %43
  %58 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %59 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %6, align 8
  %60 = call i32 @siw_qp_nextstate_from_term(%struct.siw_qp* %58, %struct.siw_qp_attrs* %59)
  br label %66

61:                                               ; preds = %43
  %62 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %63 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %6, align 8
  %64 = call i32 @siw_qp_nextstate_from_close(%struct.siw_qp* %62, %struct.siw_qp_attrs* %63)
  br label %66

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %61, %57, %53, %48
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.siw_qp*, %struct.siw_qp** %5, align 8
  %71 = call i32 @siw_qp_cm_drop(%struct.siw_qp* %70, i32 0)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %42, %12
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, i32, i32) #1

declare dso_local i32 @siw_qp_modify_nonstate(%struct.siw_qp*, %struct.siw_qp_attrs*, i32) #1

declare dso_local i32 @siw_qp_nextstate_from_idle(%struct.siw_qp*, %struct.siw_qp_attrs*, i32) #1

declare dso_local i32 @siw_qp_nextstate_from_rts(%struct.siw_qp*, %struct.siw_qp_attrs*) #1

declare dso_local i32 @siw_qp_nextstate_from_term(%struct.siw_qp*, %struct.siw_qp_attrs*) #1

declare dso_local i32 @siw_qp_nextstate_from_close(%struct.siw_qp*, %struct.siw_qp_attrs*) #1

declare dso_local i32 @siw_qp_cm_drop(%struct.siw_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
