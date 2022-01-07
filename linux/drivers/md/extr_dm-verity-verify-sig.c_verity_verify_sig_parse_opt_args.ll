; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-verify-sig.c_verity_verify_sig_parse_opt_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-verify-sig.c_verity_verify_sig_parse_opt_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg_set = type { i32 }
%struct.dm_verity = type { i32, %struct.dm_target* }
%struct.dm_target = type { i8* }
%struct.dm_verity_sig_opts = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Signature key not specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid key specified\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verity_verify_sig_parse_opt_args(%struct.dm_arg_set* %0, %struct.dm_verity* %1, %struct.dm_verity_sig_opts* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_arg_set*, align 8
  %8 = alloca %struct.dm_verity*, align 8
  %9 = alloca %struct.dm_verity_sig_opts*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dm_target*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %7, align 8
  store %struct.dm_verity* %1, %struct.dm_verity** %8, align 8
  store %struct.dm_verity_sig_opts* %2, %struct.dm_verity_sig_opts** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %16 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %15, i32 0, i32 1
  %17 = load %struct.dm_target*, %struct.dm_target** %16, align 8
  store %struct.dm_target* %17, %struct.dm_target** %12, align 8
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = call i8* @DM_VERITY_VERIFY_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dm_target*, %struct.dm_target** %12, align 8
  %24 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %57

27:                                               ; preds = %5
  %28 = load %struct.dm_arg_set*, %struct.dm_arg_set** %7, align 8
  %29 = call i8* @dm_shift_arg(%struct.dm_arg_set* %28)
  store i8* %29, i8** %14, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = load %struct.dm_verity_sig_opts*, %struct.dm_verity_sig_opts** %9, align 8
  %35 = call i32 @verity_verify_get_sig_from_key(i8* %33, %struct.dm_verity_sig_opts* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = call i8* @DM_VERITY_VERIFY_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.dm_target*, %struct.dm_target** %12, align 8
  %41 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @kstrdup(i8* %43, i32 %44)
  %46 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %47 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %49 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %52, %21
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i8* @DM_VERITY_VERIFY_ERR(i8*) #1

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @verity_verify_get_sig_from_key(i8*, %struct.dm_verity_sig_opts*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
