; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_ib_copy_path_rec_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_ib_copy_path_rec_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_user_path_rec = type { i32 }
%struct.sa_path_rec = type { i64 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_copy_path_rec_to_user(%struct.ib_user_path_rec* %0, %struct.sa_path_rec* %1) #0 {
  %3 = alloca %struct.ib_user_path_rec*, align 8
  %4 = alloca %struct.sa_path_rec*, align 8
  %5 = alloca %struct.sa_path_rec, align 8
  store %struct.ib_user_path_rec* %0, %struct.ib_user_path_rec** %3, align 8
  store %struct.sa_path_rec* %1, %struct.sa_path_rec** %4, align 8
  %6 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %7 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SA_PATH_REC_TYPE_OPA, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %13 = call i32 @sa_convert_path_opa_to_ib(%struct.sa_path_rec* %5, %struct.sa_path_rec* %12)
  %14 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %15 = call i32 @__ib_copy_path_rec_to_user(%struct.ib_user_path_rec* %14, %struct.sa_path_rec* %5)
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %18 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %19 = call i32 @__ib_copy_path_rec_to_user(%struct.ib_user_path_rec* %17, %struct.sa_path_rec* %18)
  br label %20

20:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @sa_convert_path_opa_to_ib(%struct.sa_path_rec*, %struct.sa_path_rec*) #1

declare dso_local i32 @__ib_copy_path_rec_to_user(%struct.ib_user_path_rec*, %struct.sa_path_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
