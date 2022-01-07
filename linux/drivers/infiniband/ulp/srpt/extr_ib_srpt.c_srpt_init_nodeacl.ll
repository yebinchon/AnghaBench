; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_init_nodeacl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_init_nodeacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32 }
%struct.sockaddr_storage = type { i32 }

@init_net = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid initiator port ID %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_node_acl*, i8*)* @srpt_init_nodeacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_init_nodeacl(%struct.se_node_acl* %0, i8* %1) #0 {
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.se_node_acl* %0, %struct.se_node_acl** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @srpt_parse_guid(i32* %6, i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @srpt_parse_i_port_id(i32* %14, i8* %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @AF_UNSPEC, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @inet_pton_with_scope(i32* @init_net, i32 %21, i8* %22, i32* null, %struct.sockaddr_storage* %5)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i32 @srpt_parse_guid(i32*, i8*) #1

declare dso_local i32 @srpt_parse_i_port_id(i32*, i8*) #1

declare dso_local i32 @inet_pton_with_scope(i32*, i32, i8*, i32*, %struct.sockaddr_storage*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
