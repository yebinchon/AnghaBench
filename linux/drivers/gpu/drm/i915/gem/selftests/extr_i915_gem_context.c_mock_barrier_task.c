
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void mock_barrier_task(void *data)
{
 unsigned int *counter = data;

 ++*counter;
}
