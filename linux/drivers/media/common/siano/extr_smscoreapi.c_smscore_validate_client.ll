; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_validate_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_validate_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32 }
%struct.smscore_client_t = type { i32 }
%struct.smscore_idlist_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"bad parameter.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"The msg ID already registered to another client.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smscore_device_t*, %struct.smscore_client_t*, i32, i32)* @smscore_validate_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smscore_validate_client(%struct.smscore_device_t* %0, %struct.smscore_client_t* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smscore_device_t*, align 8
  %7 = alloca %struct.smscore_client_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smscore_idlist_t*, align 8
  %11 = alloca %struct.smscore_client_t*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %6, align 8
  store %struct.smscore_client_t* %1, %struct.smscore_client_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.smscore_client_t*, %struct.smscore_client_t** %7, align 8
  %13 = icmp ne %struct.smscore_client_t* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %56

18:                                               ; preds = %4
  %19 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t* %19, i32 %20, i32 %21)
  store %struct.smscore_client_t* %22, %struct.smscore_client_t** %11, align 8
  %23 = load %struct.smscore_client_t*, %struct.smscore_client_t** %11, align 8
  %24 = load %struct.smscore_client_t*, %struct.smscore_client_t** %7, align 8
  %25 = icmp eq %struct.smscore_client_t* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %56

27:                                               ; preds = %18
  %28 = load %struct.smscore_client_t*, %struct.smscore_client_t** %11, align 8
  %29 = icmp ne %struct.smscore_client_t* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %56

34:                                               ; preds = %27
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.smscore_idlist_t* @kzalloc(i32 12, i32 %35)
  store %struct.smscore_idlist_t* %36, %struct.smscore_idlist_t** %10, align 8
  %37 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %10, align 8
  %38 = icmp ne %struct.smscore_idlist_t* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %56

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %10, align 8
  %45 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %10, align 8
  %48 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %10, align 8
  %50 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %49, i32 0, i32 2
  %51 = load %struct.smscore_client_t*, %struct.smscore_client_t** %7, align 8
  %52 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %51, i32 0, i32 0
  %53 = load %struct.smscore_device_t*, %struct.smscore_device_t** %6, align 8
  %54 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %53, i32 0, i32 0
  %55 = call i32 @list_add_locked(i32* %50, i32* %52, i32* %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %42, %39, %30, %26, %14
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.smscore_client_t* @smscore_find_client(%struct.smscore_device_t*, i32, i32) #1

declare dso_local %struct.smscore_idlist_t* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_locked(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
