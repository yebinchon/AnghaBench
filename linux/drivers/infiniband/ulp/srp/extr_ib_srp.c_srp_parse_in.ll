; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_parse_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_parse_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sockaddr_storage = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s -> %pISpfsc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sockaddr_storage*, i8*, i32*)* @srp_parse_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_parse_in(%struct.net* %0, %struct.sockaddr_storage* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kstrdup(i8* %14, i32 %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %95

22:                                               ; preds = %4
  %23 = load i8*, i8** %11, align 8
  %24 = call i8* @strrchr(i8* %23, i8 signext 58)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %12, align 8
  %29 = call i64 @strchr(i8* %28, i8 signext 93)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* null, i8** %12, align 8
  br label %32

32:                                               ; preds = %31, %27, %22
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %12, align 8
  store i8 0, i8* %36, align 1
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.net*, %struct.net** %6, align 8
  %48 = load i32, i32* @AF_INET, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %52 = call i32 @inet_pton_with_scope(%struct.net* %47, i32 %48, i8* %49, i8* %50, %struct.sockaddr_storage* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %46
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 91
  br i1 %72, label %73, label %87

73:                                               ; preds = %61
  %74 = load i8*, i8** %10, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 93
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i8*, i8** %10, align 8
  store i8 0, i8* %79, align 1
  %80 = load %struct.net*, %struct.net** %6, align 8
  %81 = load i32, i32* @AF_INET6, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %86 = call i32 @inet_pton_with_scope(%struct.net* %80, i32 %81, i8* %83, i8* %84, %struct.sockaddr_storage* %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %78, %73, %61
  br label %88

88:                                               ; preds = %87, %55, %46
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @kfree(i8* %89)
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %91, %struct.sockaddr_storage* %92)
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %88, %19
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @inet_pton_with_scope(%struct.net*, i32, i8*, i8*, %struct.sockaddr_storage*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, %struct.sockaddr_storage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
