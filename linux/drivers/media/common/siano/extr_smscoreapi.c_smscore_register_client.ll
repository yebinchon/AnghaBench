; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_register_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32 }
%struct.smsclient_params_t = type { i32, i32, i32, i32, i32 }
%struct.smscore_client_t = type { i32, i32, i32, i32, %struct.smscore_device_t*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Client already exist.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%p %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smscore_register_client(%struct.smscore_device_t* %0, %struct.smsclient_params_t* %1, %struct.smscore_client_t** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smscore_device_t*, align 8
  %6 = alloca %struct.smsclient_params_t*, align 8
  %7 = alloca %struct.smscore_client_t**, align 8
  %8 = alloca %struct.smscore_client_t*, align 8
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %5, align 8
  store %struct.smsclient_params_t* %1, %struct.smsclient_params_t** %6, align 8
  store %struct.smscore_client_t** %2, %struct.smscore_client_t*** %7, align 8
  %9 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %10 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %11 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %14 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @smscore_find_client(%struct.smscore_device_t* %9, i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %80

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.smscore_client_t* @kzalloc(i32 32, i32 %23)
  store %struct.smscore_client_t* %24, %struct.smscore_client_t** %8, align 8
  %25 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %26 = icmp ne %struct.smscore_client_t* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %80

30:                                               ; preds = %22
  %31 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %32 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %31, i32 0, i32 5
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %35 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %36 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %35, i32 0, i32 4
  store %struct.smscore_device_t* %34, %struct.smscore_device_t** %36, align 8
  %37 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %38 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %41 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %43 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %46 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %48 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %51 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %53 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %52, i32 0, i32 0
  %54 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %55 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %54, i32 0, i32 1
  %56 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %57 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %56, i32 0, i32 0
  %58 = call i32 @list_add_locked(i32* %53, i32* %55, i32* %57)
  %59 = load %struct.smscore_device_t*, %struct.smscore_device_t** %5, align 8
  %60 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %61 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %62 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %65 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @smscore_validate_client(%struct.smscore_device_t* %59, %struct.smscore_client_t* %60, i32 %63, i32 %66)
  %68 = load %struct.smscore_client_t*, %struct.smscore_client_t** %8, align 8
  %69 = load %struct.smscore_client_t**, %struct.smscore_client_t*** %7, align 8
  store %struct.smscore_client_t* %68, %struct.smscore_client_t** %69, align 8
  %70 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %71 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %74 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.smsclient_params_t*, %struct.smsclient_params_t** %6, align 8
  %77 = getelementptr inbounds %struct.smsclient_params_t, %struct.smsclient_params_t* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75, i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %30, %27, %18
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @smscore_find_client(%struct.smscore_device_t*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.smscore_client_t* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_locked(i32*, i32*, i32*) #1

declare dso_local i32 @smscore_validate_client(%struct.smscore_device_t*, %struct.smscore_client_t*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
