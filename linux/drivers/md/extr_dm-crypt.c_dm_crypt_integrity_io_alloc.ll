; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_dm_crypt_integrity_io_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_dm_crypt_integrity_io_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.bio = type { i32 }
%struct.bio_integrity_payload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_crypt_io*, %struct.bio*)* @dm_crypt_integrity_io_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_crypt_integrity_io_alloc(%struct.dm_crypt_io* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_crypt_io*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio_integrity_payload*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = call i32 @bio_sectors(%struct.bio* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %14 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %82

20:                                               ; preds = %12
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call %struct.bio_integrity_payload* @bio_integrity_alloc(%struct.bio* %21, i32 %22, i32 1)
  store %struct.bio_integrity_payload* %23, %struct.bio_integrity_payload** %6, align 8
  %24 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %6, align 8
  %25 = call i64 @IS_ERR(%struct.bio_integrity_payload* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.bio_integrity_payload* %28)
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %20
  %31 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %32 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = call i32 @bio_sectors(%struct.bio* %36)
  %38 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %39 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = lshr i32 %37, %42
  %44 = mul i32 %35, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %6, align 8
  %47 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %50 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %55 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %6, align 8
  %59 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %63 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @virt_to_page(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %4, align 8
  %68 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @offset_in_page(i32 %69)
  %71 = call i32 @bio_integrity_add_page(%struct.bio* %61, i32 %65, i32 %66, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %30
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %78, %27, %19
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio_integrity_payload* @bio_integrity_alloc(%struct.bio*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio_integrity_payload*) #1

declare dso_local i32 @PTR_ERR(%struct.bio_integrity_payload*) #1

declare dso_local i32 @bio_integrity_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
