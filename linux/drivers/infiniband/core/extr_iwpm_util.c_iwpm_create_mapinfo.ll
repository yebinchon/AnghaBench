; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwpm_util.c_iwpm_create_mapinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_iwpm_util.c_iwpm_create_mapinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.hlist_head = type { i32 }
%struct.iwpm_mapping_info = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iwpm_mapinfo_lock = common dso_local global i32 0, align 4
@iwpm_hash_bucket = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwpm_create_mapinfo(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hlist_head*, align 8
  %11 = alloca %struct.iwpm_mapping_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.hlist_head* null, %struct.hlist_head** %10, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @iwpm_valid_client(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %5, align 4
  br label %72

21:                                               ; preds = %4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.iwpm_mapping_info* @kzalloc(i32 20, i32 %22)
  store %struct.iwpm_mapping_info* %23, %struct.iwpm_mapping_info** %11, align 8
  %24 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %25 = icmp ne %struct.iwpm_mapping_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %72

29:                                               ; preds = %21
  %30 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %31 = getelementptr inbounds %struct.iwpm_mapping_info, %struct.iwpm_mapping_info* %30, i32 0, i32 2
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %33 = call i32 @memcpy(i32* %31, %struct.sockaddr_storage* %32, i32 4)
  %34 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %35 = getelementptr inbounds %struct.iwpm_mapping_info, %struct.iwpm_mapping_info* %34, i32 0, i32 1
  %36 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %37 = call i32 @memcpy(i32* %35, %struct.sockaddr_storage* %36, i32 4)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %40 = getelementptr inbounds %struct.iwpm_mapping_info, %struct.iwpm_mapping_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %43 = getelementptr inbounds %struct.iwpm_mapping_info, %struct.iwpm_mapping_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @spin_lock_irqsave(i32* @iwpm_mapinfo_lock, i64 %44)
  %46 = load i64, i64* @iwpm_hash_bucket, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %29
  %49 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %50 = getelementptr inbounds %struct.iwpm_mapping_info, %struct.iwpm_mapping_info* %49, i32 0, i32 2
  %51 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %52 = getelementptr inbounds %struct.iwpm_mapping_info, %struct.iwpm_mapping_info* %51, i32 0, i32 1
  %53 = call %struct.hlist_head* @get_mapinfo_hash_bucket(i32* %50, i32* %52)
  store %struct.hlist_head* %53, %struct.hlist_head** %10, align 8
  %54 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %55 = icmp ne %struct.hlist_head* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %58 = getelementptr inbounds %struct.iwpm_mapping_info, %struct.iwpm_mapping_info* %57, i32 0, i32 0
  %59 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %60 = call i32 @hlist_add_head(i32* %58, %struct.hlist_head* %59)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* @iwpm_mapinfo_lock, i64 %63)
  %65 = load %struct.hlist_head*, %struct.hlist_head** %10, align 8
  %66 = icmp ne %struct.hlist_head* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.iwpm_mapping_info*, %struct.iwpm_mapping_info** %11, align 8
  %69 = call i32 @kfree(%struct.iwpm_mapping_info* %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %26, %19
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @iwpm_valid_client(i32) #1

declare dso_local %struct.iwpm_mapping_info* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.hlist_head* @get_mapinfo_hash_bucket(i32*, i32*) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.iwpm_mapping_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
