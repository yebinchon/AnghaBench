; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-verify-sig.h_verity_verify_sig_parse_opt_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-verify-sig.h_verity_verify_sig_parse_opt_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg_set = type { i32 }
%struct.dm_verity = type { i32 }
%struct.dm_verity_sig_opts = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @verity_verify_sig_parse_opt_args(%struct.dm_arg_set* %0, %struct.dm_verity* %1, %struct.dm_verity_sig_opts* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.dm_arg_set*, align 8
  %7 = alloca %struct.dm_verity*, align 8
  %8 = alloca %struct.dm_verity_sig_opts*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %6, align 8
  store %struct.dm_verity* %1, %struct.dm_verity** %7, align 8
  store %struct.dm_verity_sig_opts* %2, %struct.dm_verity_sig_opts** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
