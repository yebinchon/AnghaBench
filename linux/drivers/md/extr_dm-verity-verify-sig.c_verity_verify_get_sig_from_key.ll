; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-verify-sig.c_verity_verify_get_sig_from_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-verify-sig.c_verity_verify_get_sig_from_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity_sig_opts = type { i32, i32 }
%struct.key = type { i32 }
%struct.user_key_payload = type { i32, i32 }

@key_type_user = common dso_local global i32 0, align 4
@EKEYREVOKED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dm_verity_sig_opts*)* @verity_verify_get_sig_from_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_verify_get_sig_from_key(i8* %0, %struct.dm_verity_sig_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dm_verity_sig_opts*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.user_key_payload*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dm_verity_sig_opts* %1, %struct.dm_verity_sig_opts** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.key* @request_key(i32* @key_type_user, i8* %9, i32* null)
  store %struct.key* %10, %struct.key** %6, align 8
  %11 = load %struct.key*, %struct.key** %6, align 8
  %12 = call i64 @IS_ERR(%struct.key* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.key*, %struct.key** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.key* %15)
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.key*, %struct.key** %6, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.key*, %struct.key** %6, align 8
  %22 = call %struct.user_key_payload* @user_key_payload_locked(%struct.key* %21)
  store %struct.user_key_payload* %22, %struct.user_key_payload** %7, align 8
  %23 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %24 = icmp ne %struct.user_key_payload* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EKEYREVOKED, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %59

28:                                               ; preds = %17
  %29 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %30 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kmalloc(i32 %31, i32 %32)
  %34 = load %struct.dm_verity_sig_opts*, %struct.dm_verity_sig_opts** %5, align 8
  %35 = getelementptr inbounds %struct.dm_verity_sig_opts, %struct.dm_verity_sig_opts* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dm_verity_sig_opts*, %struct.dm_verity_sig_opts** %5, align 8
  %37 = getelementptr inbounds %struct.dm_verity_sig_opts, %struct.dm_verity_sig_opts* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %59

43:                                               ; preds = %28
  %44 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %45 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dm_verity_sig_opts*, %struct.dm_verity_sig_opts** %5, align 8
  %48 = getelementptr inbounds %struct.dm_verity_sig_opts, %struct.dm_verity_sig_opts* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dm_verity_sig_opts*, %struct.dm_verity_sig_opts** %5, align 8
  %50 = getelementptr inbounds %struct.dm_verity_sig_opts, %struct.dm_verity_sig_opts* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %53 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dm_verity_sig_opts*, %struct.dm_verity_sig_opts** %5, align 8
  %56 = getelementptr inbounds %struct.dm_verity_sig_opts, %struct.dm_verity_sig_opts* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32 %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %43, %40, %25
  %60 = load %struct.key*, %struct.key** %6, align 8
  %61 = getelementptr inbounds %struct.key, %struct.key* %60, i32 0, i32 0
  %62 = call i32 @up_read(i32* %61)
  %63 = load %struct.key*, %struct.key** %6, align 8
  %64 = call i32 @key_put(%struct.key* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.key* @request_key(i32*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.user_key_payload* @user_key_payload_locked(%struct.key*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
