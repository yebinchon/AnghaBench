; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_ib_copy_path_rec_from_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c_ib_copy_path_rec_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_user_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%union.ib_gid = type { i32 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i32 0, align 4
@SA_PATH_REC_TYPE_IB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_copy_path_rec_from_user(%struct.sa_path_rec* %0, %struct.ib_user_path_rec* %1) #0 {
  %3 = alloca %struct.sa_path_rec*, align 8
  %4 = alloca %struct.ib_user_path_rec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sa_path_rec* %0, %struct.sa_path_rec** %3, align 8
  store %struct.ib_user_path_rec* %1, %struct.ib_user_path_rec** %4, align 8
  %7 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %8 = call i32 @memset(%struct.sa_path_rec* %7, i32 0, i32 68)
  %9 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %10 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %9, i32 0, i32 15
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %union.ib_gid*
  %13 = call i64 @ib_is_opa_gid(%union.ib_gid* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %17 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %16, i32 0, i32 16
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %union.ib_gid*
  %20 = call i64 @ib_is_opa_gid(%union.ib_gid* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15, %2
  %23 = load i32, i32* @SA_PATH_REC_TYPE_OPA, align 4
  %24 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %25 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %24, i32 0, i32 16
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %27 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %26, i32 0, i32 15
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %union.ib_gid*
  %30 = call i32 @opa_get_lid_from_gid(%union.ib_gid* %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %32 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %31, i32 0, i32 16
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %union.ib_gid*
  %35 = call i32 @opa_get_lid_from_gid(%union.ib_gid* %34)
  store i32 %35, i32* %6, align 4
  br label %48

36:                                               ; preds = %15
  %37 = load i32, i32* @SA_PATH_REC_TYPE_IB, align 4
  %38 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %39 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %38, i32 0, i32 16
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %41 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %40, i32 0, i32 18
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %45 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %44, i32 0, i32 17
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohs(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %36, %22
  %49 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %50 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %49, i32 0, i32 15
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %54 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %53, i32 0, i32 16
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @memcpy(i32 %52, i64 %55, i32 4)
  %57 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %58 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %57, i32 0, i32 14
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %62 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %61, i32 0, i32 15
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memcpy(i32 %60, i64 %63, i32 4)
  %65 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @sa_path_set_dlid(%struct.sa_path_rec* %65, i32 %66)
  %68 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @sa_path_set_slid(%struct.sa_path_rec* %68, i32 %69)
  %71 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %72 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %73 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %72, i32 0, i32 14
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sa_path_set_raw_traffic(%struct.sa_path_rec* %71, i32 %74)
  %76 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %77 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %80 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %82 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %85 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %84, i32 0, i32 12
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %87 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %90 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %89, i32 0, i32 11
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %92 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %95 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %97 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %100 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %99, i32 0, i32 9
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %102 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %105 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %107 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %110 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %112 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %115 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %117 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %120 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %122 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %125 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %127 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %130 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %132 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %135 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %137 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %140 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %4, align 8
  %142 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %145 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sa_path_rec*, %struct.sa_path_rec** %3, align 8
  %147 = call i32 @sa_path_set_dmac_zero(%struct.sa_path_rec* %146)
  ret void
}

declare dso_local i32 @memset(%struct.sa_path_rec*, i32, i32) #1

declare dso_local i64 @ib_is_opa_gid(%union.ib_gid*) #1

declare dso_local i32 @opa_get_lid_from_gid(%union.ib_gid*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @sa_path_set_dlid(%struct.sa_path_rec*, i32) #1

declare dso_local i32 @sa_path_set_slid(%struct.sa_path_rec*, i32) #1

declare dso_local i32 @sa_path_set_raw_traffic(%struct.sa_path_rec*, i32) #1

declare dso_local i32 @sa_path_set_dmac_zero(%struct.sa_path_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
