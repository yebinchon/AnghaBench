; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_send_term.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_send_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32 }
%struct.fsi_msg = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Error %d sending term\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"TERM failed; lost communication with slave\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FSI_RESP_ACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"TERM failed; response %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*, i64)* @send_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_term(%struct.fsi_master_acf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master_acf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fsi_msg, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @build_term_command(%struct.fsi_msg* %6, i64 %9)
  %11 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %12 = call i32 @send_request(%struct.fsi_master_acf* %11, %struct.fsi_msg* %6, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %17 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @dev_warn(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %24 = call i32 @read_copro_response(%struct.fsi_master_acf* %23, i32 0, i32* null, i64* %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %29 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %48

34:                                               ; preds = %22
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @FSI_RESP_ACK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %4, align 8
  %40 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %38, %27, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @build_term_command(%struct.fsi_msg*, i64) #1

declare dso_local i32 @send_request(%struct.fsi_master_acf*, %struct.fsi_msg*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @read_copro_response(%struct.fsi_master_acf*, i32, i32*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
