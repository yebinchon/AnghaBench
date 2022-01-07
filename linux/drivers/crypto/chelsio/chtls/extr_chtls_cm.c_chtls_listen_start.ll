; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_listen_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_listen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.sock = type { i64 }
%struct.net_device = type { i32 }
%struct.listen_ctx = type { i32, i32, %struct.chtls_dev*, %struct.sock* }
%struct.adapter = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.TYPE_4__ = type { i32, i32 }

@PF_INET = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@CXGB4_FULL_INIT_DONE = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@T4_LISTEN_START_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chtls_listen_start(%struct.chtls_dev* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.listen_ctx*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PF_INET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %148

20:                                               ; preds = %2
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call %struct.net_device* @chtls_ipv4_netdev(%struct.chtls_dev* %22, %struct.sock* %23)
  store %struct.net_device* %24, %struct.net_device** %6, align 8
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EBADF, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %148

31:                                               ; preds = %20
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call %struct.port_info* @netdev_priv(%struct.net_device* %32)
  store %struct.port_info* %33, %struct.port_info** %9, align 8
  %34 = load %struct.port_info*, %struct.port_info** %9, align 8
  %35 = getelementptr inbounds %struct.port_info, %struct.port_info* %34, i32 0, i32 0
  %36 = load %struct.adapter*, %struct.adapter** %35, align 8
  store %struct.adapter* %36, %struct.adapter** %8, align 8
  %37 = load %struct.adapter*, %struct.adapter** %8, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CXGB4_FULL_INIT_DONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @EBADF, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %148

46:                                               ; preds = %31
  %47 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = call i64 @listen_hash_find(%struct.chtls_dev* %47, %struct.sock* %48)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EADDRINUSE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %148

54:                                               ; preds = %46
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.listen_ctx* @kmalloc(i32 24, i32 %55)
  store %struct.listen_ctx* %56, %struct.listen_ctx** %7, align 8
  %57 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %58 = icmp ne %struct.listen_ctx* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %148

62:                                               ; preds = %54
  %63 = load i32, i32* @THIS_MODULE, align 4
  %64 = call i32 @__module_get(i32 %63)
  %65 = load %struct.sock*, %struct.sock** %5, align 8
  %66 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %66, i32 0, i32 3
  store %struct.sock* %65, %struct.sock** %67, align 8
  %68 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %69 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %70 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %69, i32 0, i32 2
  store %struct.chtls_dev* %68, %struct.chtls_dev** %70, align 8
  %71 = load i32, i32* @T4_LISTEN_START_PENDING, align 4
  %72 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %73 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %74, i32 0, i32 0
  %76 = call i32 @skb_queue_head_init(i32* %75)
  %77 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %78 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %84 = call i32 @cxgb4_alloc_stid(i32 %79, i64 %82, %struct.listen_ctx* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %62
  br label %141

88:                                               ; preds = %62
  %89 = load %struct.sock*, %struct.sock** %5, align 8
  %90 = call i32 @sock_hold(%struct.sock* %89)
  %91 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @listen_hash_add(%struct.chtls_dev* %91, %struct.sock* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %130

97:                                               ; preds = %88
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.sock*, %struct.sock** %5, align 8
  %101 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sock*, %struct.sock** %5, align 8
  %105 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %109 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @cxgb4_create_server(%struct.net_device* %98, i32 %99, i32 %103, i32 %107, i32 0, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %97
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @net_xmit_errno(i32 %119)
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %118, %97
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %126

125:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %148

126:                                              ; preds = %124
  %127 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %128 = load %struct.sock*, %struct.sock** %5, align 8
  %129 = call i32 @listen_hash_del(%struct.chtls_dev* %127, %struct.sock* %128)
  br label %130

130:                                              ; preds = %126, %96
  %131 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %132 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.sock*, %struct.sock** %5, align 8
  %136 = getelementptr inbounds %struct.sock, %struct.sock* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @cxgb4_free_stid(i32 %133, i32 %134, i64 %137)
  %139 = load %struct.sock*, %struct.sock** %5, align 8
  %140 = call i32 @sock_put(%struct.sock* %139)
  br label %141

141:                                              ; preds = %130, %87
  %142 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %143 = call i32 @kfree(%struct.listen_ctx* %142)
  %144 = load i32, i32* @THIS_MODULE, align 4
  %145 = call i32 @module_put(i32 %144)
  %146 = load i32, i32* @EBADF, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %141, %125, %59, %51, %43, %28, %17
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @chtls_ipv4_netdev(%struct.chtls_dev*, %struct.sock*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @listen_hash_find(%struct.chtls_dev*, %struct.sock*) #1

declare dso_local %struct.listen_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @cxgb4_alloc_stid(i32, i64, %struct.listen_ctx*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @listen_hash_add(%struct.chtls_dev*, %struct.sock*, i32) #1

declare dso_local i32 @cxgb4_create_server(%struct.net_device*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @listen_hash_del(%struct.chtls_dev*, %struct.sock*) #1

declare dso_local i32 @cxgb4_free_stid(i32, i32, i64) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree(%struct.listen_ctx*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
