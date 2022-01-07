; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c___ib_copy_path_rec_to_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_marshall.c___ib_copy_path_rec_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_user_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.sa_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_user_path_rec*, %struct.sa_path_rec*)* @__ib_copy_path_rec_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ib_copy_path_rec_to_user(%struct.ib_user_path_rec* %0, %struct.sa_path_rec* %1) #0 {
  %3 = alloca %struct.ib_user_path_rec*, align 8
  %4 = alloca %struct.sa_path_rec*, align 8
  store %struct.ib_user_path_rec* %0, %struct.ib_user_path_rec** %3, align 8
  store %struct.sa_path_rec* %1, %struct.sa_path_rec** %4, align 8
  %5 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %6 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %5, i32 0, i32 18
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %9 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 15
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memcpy(i32 %7, i32 %11, i32 4)
  %13 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %14 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %13, i32 0, i32 17
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %17 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %16, i32 0, i32 14
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %15, i32 %19, i32 4)
  %21 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %22 = call i32 @sa_path_get_dlid(%struct.sa_path_rec* %21)
  %23 = call i32 @ntohl(i32 %22)
  %24 = call i8* @htons(i32 %23)
  %25 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %26 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %25, i32 0, i32 16
  store i8* %24, i8** %26, align 8
  %27 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %28 = call i32 @sa_path_get_slid(%struct.sa_path_rec* %27)
  %29 = call i32 @ntohl(i32 %28)
  %30 = call i8* @htons(i32 %29)
  %31 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %32 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %31, i32 0, i32 15
  store i8* %30, i8** %32, align 8
  %33 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %34 = call i32 @sa_path_get_raw_traffic(%struct.sa_path_rec* %33)
  %35 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %36 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %35, i32 0, i32 14
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %38 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %41 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %43 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %46 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %45, i32 0, i32 12
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %48 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %51 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %53 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %56 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %58 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %61 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %63 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %66 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %68 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %71 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %73 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %76 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %78 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %81 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %83 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %86 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %88 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %91 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %93 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %96 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %98 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %101 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.sa_path_rec*, %struct.sa_path_rec** %4, align 8
  %103 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ib_user_path_rec*, %struct.ib_user_path_rec** %3, align 8
  %106 = getelementptr inbounds %struct.ib_user_path_rec, %struct.ib_user_path_rec* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sa_path_get_dlid(%struct.sa_path_rec*) #1

declare dso_local i32 @sa_path_get_slid(%struct.sa_path_rec*) #1

declare dso_local i32 @sa_path_get_raw_traffic(%struct.sa_path_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
