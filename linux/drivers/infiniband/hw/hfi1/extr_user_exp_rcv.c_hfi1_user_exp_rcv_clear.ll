; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_hfi1_user_exp_rcv_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_exp_rcv.c_hfi1_user_exp_rcv_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { i32, i32, %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32 }
%struct.hfi1_tid_info = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to unprogram rcv array %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_user_exp_rcv_clear(%struct.hfi1_filedata* %0, %struct.hfi1_tid_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_filedata*, align 8
  %5 = alloca %struct.hfi1_tid_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_ctxtdata*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %4, align 8
  store %struct.hfi1_tid_info* %1, %struct.hfi1_tid_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %11 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %10, i32 0, i32 2
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %11, align 8
  store %struct.hfi1_ctxtdata* %12, %struct.hfi1_ctxtdata** %7, align 8
  %13 = load %struct.hfi1_tid_info*, %struct.hfi1_tid_info** %5, align 8
  %14 = getelementptr inbounds %struct.hfi1_tid_info, %struct.hfi1_tid_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %17 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %93

26:                                               ; preds = %2
  %27 = load %struct.hfi1_tid_info*, %struct.hfi1_tid_info** %5, align 8
  %28 = getelementptr inbounds %struct.hfi1_tid_info, %struct.hfi1_tid_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @u64_to_user_ptr(i32 %29)
  %31 = load %struct.hfi1_tid_info*, %struct.hfi1_tid_info** %5, align 8
  %32 = getelementptr inbounds %struct.hfi1_tid_info, %struct.hfi1_tid_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32* @memdup_user(i32 %30, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @PTR_ERR(i32* %42)
  store i32 %43, i32* %3, align 4
  br label %93

44:                                               ; preds = %26
  %45 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %46 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %69, %44
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.hfi1_tid_info*, %struct.hfi1_tid_info** %5, align 8
  %51 = getelementptr inbounds %struct.hfi1_tid_info, %struct.hfi1_tid_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @unprogram_rcvarray(%struct.hfi1_filedata* %55, i32 %60, i32* null)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* @TID, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @hfi1_cdbg(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %72

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %48

72:                                               ; preds = %64, %48
  %73 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %74 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %73, i32 0, i32 1
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %78 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %4, align 8
  %82 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.hfi1_tid_info*, %struct.hfi1_tid_info** %5, align 8
  %86 = getelementptr inbounds %struct.hfi1_tid_info, %struct.hfi1_tid_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %88 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @kfree(i32* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %72, %41, %23
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @memdup_user(i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unprogram_rcvarray(%struct.hfi1_filedata*, i32, i32*) #1

declare dso_local i32 @hfi1_cdbg(i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
